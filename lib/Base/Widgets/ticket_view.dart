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
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

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
                      TextStyleThird(text: ticket["from"]["code"]),
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
                      TextStyleThird(text: ticket["to"]["code"])
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
                        child: TextStyleFourth(text: ticket['from']['name']),
                      ),
                      Expanded(child: Container()),
                      TextStyleFourth(text: "8H-30M"),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextStyleFourth(
                          text: ticket['to']['name'],
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
                        topText: ticket["date"],
                        bottomText: "Date",
                        alignment: CrossAxisAlignment.start,
                      ),
                      AppColumnLayout(
                          topText: ticket["flying_time"],
                          bottomText: "Departure Time",
                          alignment: CrossAxisAlignment.center),
                      AppColumnLayout(
                          topText: ticket["number"],
                          bottomText: "Number",
                          alignment: CrossAxisAlignment.end)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
