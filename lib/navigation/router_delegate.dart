// import 'package:flutter/material.dart';
// import 'package:ya_todo_app/navigation/router_config.dart';

// class AppRouterDelegate extends AppRouterDelegate<RouteConfig>
//     with ChangeNotifier, PopNavigatorRouterDelegateMixin<RouteConfig> {
//   @override
//   final GlobalKey<NavigatorState> navigatorKey;

//   AppRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

//   // Add state flags here
// // Sample from Working with Pages

//   @override
//   RouteConfig get currentConfiguration {
// // Configure routes based on app state here
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Navigator(
//       key: navigatorKey,
//       pages: [
//         // Add list of pages here
//         // Sample from Working with Pages
//       ],
//       onPopPage: (route, result) {
//         // Handle removal of pages here
//       },
//     );
//   }

//   @override
//   Future<void> setNewRoutePath(RouteConfig configuration) async {
//     // Update the app state to set a new route based on the configuration settings
//   }

// // Add methods that modify state here
// // Sample from Working with Pages
// }
