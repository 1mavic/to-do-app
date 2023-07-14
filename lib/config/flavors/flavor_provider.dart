import 'package:flutter/material.dart';
import 'package:ya_todo_app/config/flavors/app_flavor.dart';

class FlavorProvider extends InheritedWidget {
  const FlavorProvider({
    required Widget child,
    required this.flavor,
    super.key,
  }) : super(child: child);
  final AppFlavor flavor;

  static FlavorProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FlavorProvider>();
  }

  @override
  bool updateShouldNotify(FlavorProvider oldWidget) {
    return false;
  }
}
