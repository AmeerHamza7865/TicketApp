import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class AppTextIcon extends StatelessWidget {
  const AppTextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      child: Row(
        children: [
          Icon(
            Icons.flight_takeoff_rounded,
            color: AppStyles.planeColor,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Departure',
            style: AppStyles.textStyle,
          )
        ],
      ),
    );
  }
}
