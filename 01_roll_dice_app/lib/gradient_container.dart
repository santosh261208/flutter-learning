import 'dart:ui' as ui;
import 'package:first_app/styled_text.dart';
import 'package:first_app/subtitle_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText(),
          SubtitleText(),
        ],
      ),
    );
  }
}
