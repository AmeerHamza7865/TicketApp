// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticket_app/Base/Widgets/text_style_fourth.dart';
import 'package:ticket_app/Base/Widgets/text_style_third.dart';

// Test
class AppColumnLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const AppColumnLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        TextStyleThird(text: topText),
        const SizedBox(
          height: 5,
        ),
        TextStyleFourth(text: bottomText),
      ],
    );
  }
}
