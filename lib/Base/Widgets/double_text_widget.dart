import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/Screen/all_tickets.dart';

class DoubleTextApp extends StatelessWidget {
  const DoubleTextApp(
      {super.key, required this.bigText, required this.smallText,required this.func});
  final String bigText;
  final String smallText;
  final VoidCallback func;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bigText,
            style: AppStyles.headingStyle3,
          ),
          InkWell(
            onTap: func,
            child: Text(
              smallText,
              style:
                  AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
