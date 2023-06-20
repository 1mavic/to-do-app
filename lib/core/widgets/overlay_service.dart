import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

/// serivec to show unified ovrlays
class OverlayService {
  OverlayState? _overlayState;
  OverlayEntry? _entry;

  /// duration of overlay presence on screen
  final _overlayDuration = const Duration(seconds: 10);

  /// show camp overlay widget with text and icon
  Future<void> showTextModal(
    BuildContext context,
    String text,
  ) async {
    if (_entry != null) {
      removeOverlay();
    }
    _overlayState = Overlay.of(context);
    _entry = OverlayEntry(
      builder: (context) => _TextOverlayWidget(
        text: text,
        duration: _overlayDuration,
      ),
    );
    _overlayState?.insert(_entry!);
    await Future<void>.delayed(const Duration(seconds: 10));
    _close();
    // .then((_) => _close());
  }

  void _close() {
    _entry?.remove();
    _entry = null;
  }

  /// remove displaed overlay
  void removeOverlay() {
    _entry?.remove();
    _entry = null;
  }
}

/// custom snack bar with just text
class _TextOverlayWidget extends StatefulWidget {
  /// custom snack bar with just text
  const _TextOverlayWidget({
    required this.text,
    required this.duration,
  });

  /// text to display in snackbar
  final String text;

  /// duration of overlay presence on screen
  final Duration duration;
  @override
  State<_TextOverlayWidget> createState() => _TextOverlayWidgetState();
}

class _TextOverlayWidgetState extends State<_TextOverlayWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 200,
      ),
    );
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0,
          1,
          curve: Curves.easeIn,
        ),
      ),
    );
    _controller
      ..forward()
      ..addListener(() async {
        if (_controller.isCompleted) {
          unawaited(_close());
        }
      });
    super.initState();
  }

  Future<void> _close() async {
    await Future<void>.delayed(
      widget.duration,
    );
    if (!mounted) return;

    unawaited(
      _controller.reverse(),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _opacityAnimation,
      child: Material(
        type: MaterialType.transparency,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 20),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                12,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                child: ColoredBox(
                  color: Theme.of(context).extension<AppColors>()?.gray ??
                      Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.text,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      builder: (context, child) {
        return Opacity(
          opacity: _opacityAnimation.value,
          child: child,
        );
      },
    );
  }
}
