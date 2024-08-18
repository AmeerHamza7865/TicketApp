import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key, this.isColor});
  final bool? isColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
          border: Border.all(
              color: isColor == null ? Colors.white : AppStyles.dotColor,
              width: 2.5),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
