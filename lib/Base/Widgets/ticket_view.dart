// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/app_column_layout.dart';
import 'package:ticket_app/Base/Widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/Base/Widgets/big_circle.dart';
import 'package:ticket_app/Base/Widgets/big_dot.dart';
import 'package:ticket_app/Base/Widgets/text_style_fourth.dart';
import 'package:ticket_app/Base/Widgets/text_style_third.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // Blue Container Side
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketBlue,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show Departure and Destination with Icon in Line
                  Row(
                    children: [
                      TextStyleThird(text: "NYC"),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: AppLayoutBuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.5,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: Colors.white,
                                  ))),
                        ],
                      )),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: "LDN")
                    ],
                  ),
                  // show Departure and Destination with name in Second Line

                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(text: "New-York"),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "8H-30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: "London",
                          align: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //BigCirle Sparator

            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  BigCircle(isRight: false),
                  Expanded(
                      child: AppLayoutBuilderWidget(
                    randomDivider: 16,
                    width: 6,
                  )),
                  BigCircle(isRight: true)
                ],
              ),
            ),
            //orange Container Side
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show Departure and Destination with Icon in Line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        topText: "1 May",
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),

                      AppColumnLayout(
                          topText: "08:00 AM",
                          bottomText: "Departure Time",
                          alignment: CrossAxisAlignment.center),
                      AppColumnLayout(
                          topText: "24",
                          bottomText: "November",
                          alignment: CrossAxisAlignment.end)

                      // Expanded(child: Container()),
                      // Text(
                      //   "08:00 AM",
                      //   style: AppStyles.headingStyle3
                      //       .copyWith(color: Colors.white),
                      // ),
                      // Expanded(child: Container()),
                      // Text(
                      //   "24",
                      //   style: AppStyles.headingStyle3
                      //       .copyWith(color: Colors.white),
                      // ),
                    ],
                  ),
                  // show Departure and Destination with name in Second Line

                  // SizedBox(
                  //   height: 3,
                  // ),
                  // Row(
                  //   children: [
                  //     Text(
                  //       "Date",
                  //       style: AppStyles.headingStyle3
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "Departure Time",
                  //       style: AppStyles.headingStyle3
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //     Expanded(child: Container()),
                  //     Text(
                  //       "November",
                  //       style: AppStyles.headingStyle3
                  //           .copyWith(color: Colors.white),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
