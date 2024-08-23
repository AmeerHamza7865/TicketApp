import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class HeadingTextWidget extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const HeadingTextWidget(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyles.headingStyle1.copyWith(color: Colors.white)
          : AppStyles.headingStyle1,
    );
  }
}