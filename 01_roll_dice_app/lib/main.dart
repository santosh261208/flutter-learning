import 'dart:ui' as ui;

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 190, 152, 255),
                Color.fromARGB(255, 47, 14, 102),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              'Flutter Course',
              style: TextStyle(
                fontSize: 28,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    <Color>[
                      const ui.Color.fromARGB(255, 75, 219, 230),
                      const ui.Color.fromARGB(255, 14, 42, 117),
                    ],
                  ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
