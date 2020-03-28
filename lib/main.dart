import 'package:flutter/material.dart';
import './app.dart';

void main() => runApp(Main());

// This Widget is the main application widget.
class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Te ajudo',
      home: App(),
    );
  }
}
