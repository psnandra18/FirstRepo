import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Yo!!!"),
          ),
        ),
      ),
    );
  }
}
