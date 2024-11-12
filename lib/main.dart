import 'package:flutter/material.dart';
import 'views/control_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Robot Controller',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ControlPage(),
    );
  }
}
