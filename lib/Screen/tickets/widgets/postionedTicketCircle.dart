import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class Postionedticketcircle extends StatelessWidget {
  const Postionedticketcircle({super.key, this.pos});
  final bool? pos;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: pos == true ? 27 : null,
        right: pos == true ? null : 27,
        top: 251,
        child: Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: AppStyles.textColor)),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
