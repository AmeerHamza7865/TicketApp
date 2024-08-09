// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/Base/Widgets/big_circle.dart';
import 'package:ticket_app/Base/Widgets/big_dot.dart';
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
                      Text(
                        "NYC",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  // show Departure and Destination with name in Second Line

                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H-30M",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                 BigCircle(isRight: false),
                 Expanded(child: Container()),
                 BigCircle(isRight: true)
                ],
              ),
            ),
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
                    children: [
                      Text(
                        "NYC",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
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
                      Text(
                        "LDN",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  // show Departure and Destination with name in Second Line

                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "8H-30M",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: AppStyles.headingStyle3
                            .copyWith(color: Colors.white),
                      ),
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
