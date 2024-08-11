// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color kakiColor = Color.fromARGB(255, 174, 211, 115);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headingStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.w500, color: textColor);
  static TextStyle headingStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold);
  static TextStyle headingStyle3 =
      TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headingStyle4 =
      TextStyle(fontSize: 14, fontWeight: FontWeight.w500);
}
