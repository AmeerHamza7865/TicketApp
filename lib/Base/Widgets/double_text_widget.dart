import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class DoubleTextApp extends StatelessWidget {
  const DoubleTextApp({super.key, required this.bigText,required this.smallText});
  final String bigText;
  final String smallText;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(bigText,style: AppStyles.headingStyle3,),
          InkWell(
            onTap: (){},
            child: Text(smallText,style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),),
          )
        ],
      ),
    );
  }
}