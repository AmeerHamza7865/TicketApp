import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final TextAlign textalign;
  const TextStyleThird(
      {super.key, required this.text, this.textalign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      style: AppStyles.headingStyle3.copyWith(color: Colors.white),
    );
  }
}
