import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ya_todo_app/config/colors/app_colors.dart';

class AnimatedBannerWidget extends StatefulWidget {
  const AnimatedBannerWidget({super.key});

  @override
  State<AnimatedBannerWidget> createState() => _AnimatedBannerWidgetState();
}

class _AnimatedBannerWidgetState extends State<AnimatedBannerWidget> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _controller,
      child: Icon(
        Icons.error,
        color: Theme.of(context).extension<AppColors>()?.red,
      ),
    );
  }
}
