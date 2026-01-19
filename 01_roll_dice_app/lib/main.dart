import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 164, 193, 216),
          Color.fromARGB(255, 14, 118, 136),
        ),
      ),
    ),
  );
}
