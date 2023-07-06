import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/flavors/app_flavor.dart';
import 'package:ya_todo_app/config/flavors/flavor_provider.dart';

class FlavorBannerWidget extends StatelessWidget {
  const FlavorBannerWidget({
    required this.child,
    super.key,
  }) : super();
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final flavor = FlavorProvider.of(context)?.flavor;
    return switch (flavor) {
      AppFlavor.dev => Banner(
          message: '[DEV]',
          location: BannerLocation.topEnd,
          child: child,
        ),
      _ => child,
    };
  }
}
