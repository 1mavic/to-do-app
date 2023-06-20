import 'package:flutter/material.dart';

/// screen with fatal error text
class FatalErrorScreen extends StatelessWidget {
  /// screen with fatal error text
  const FatalErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: Icon(
            Icons.close,
            size: 48,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
