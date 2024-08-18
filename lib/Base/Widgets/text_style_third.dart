import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class TextStyleThird extends StatelessWidget {
  final String text;
  final TextAlign textalign;
  final bool? isColor;
  const TextStyleThird(
      {super.key,
      required this.text,
      this.textalign = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textalign,
      style: isColor == null
          ? AppStyles.headingStyle3.copyWith(color: Colors.white)
          : AppStyles.headingStyle3,
    );
  }
}
