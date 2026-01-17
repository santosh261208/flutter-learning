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
                const ui.Color.fromARGB(255, 164, 193, 216),
                ui.Color.fromARGB(255, 14, 118, 136),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              'Hell World',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
