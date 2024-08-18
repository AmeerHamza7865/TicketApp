// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/app_column_layout.dart';
import 'package:ticket_app/Base/Widgets/app_layout_builder_widget.dart';
import 'package:ticket_app/Base/Widgets/ticket_view.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/Base/utils/all_json.dart';
import 'package:ticket_app/Screen/Search/widgets/app_tickets_tabs.dart';
import 'package:ticket_app/Screen/tickets/widgets/postionedTicketCircle.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  late int ticketIndex = 0;
  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      print("passed Index as ${args["index"]}");
      ticketIndex = args["index"];
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.bgColor,
        appBar: AppBar(
          title: Text("Tickets"),
          centerTitle: true,
          backgroundColor: AppStyles.bgColor,
        ),
        body: Stack(
          children: [
            ListView(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                children: [
                  // SizedBox(
                  //   height: 40,
                  // ),
                  // Text(
                  //   "Tickets",
                  //   style: AppStyles.headingStyle1,
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  AppTicketsTabs(
                    FirstTabText: "Upcoming",
                    SecondTabText: "Previous",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // color: Colors.red,
                    padding: EdgeInsets.only(left: 16),
                    child: TicketView(
                      ticket: ticketList[ticketIndex],
                      isColor: true,
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    color: AppStyles.ticketColor,
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                              topText: "Flutter Db",
                              bottomText: "Passenger",
                              alignment: CrossAxisAlignment.start,
                              isColor: true,
                            ),
                            AppColumnLayout(
                              topText: "5221 D365774",
                              bottomText: "Passport",
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppLayoutBuilderWidget(
                          randomDivider: 15,
                          width: 6,
                          isColor: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AppColumnLayout(
                              topText: "65856 9876557",
                              bottomText: "Number of E Ticket",
                              alignment: CrossAxisAlignment.start,
                              isColor: true,
                            ),
                            AppColumnLayout(
                              topText: "B5221 ",
                              bottomText: "Booking Code",
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        AppLayoutBuilderWidget(
                          randomDivider: 15,
                          width: 6,
                          isColor: false,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      AppMedia.visaLogo,
                                      scale: 15,
                                    ),
                                    Text(
                                      " *** 2345",
                                      style: AppStyles.headingStyle3,
                                    ),
                                  ],
                                ),
                                Text(
                                  "Payment Method",
                                  style: AppStyles.headingStyle4,
                                )
                              ],
                            ),
                            AppColumnLayout(
                              topText: "\$24.99",
                              bottomText: "Price",
                              alignment: CrossAxisAlignment.end,
                              isColor: true,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Bottom Card Details
                  SizedBox(
                    height: 1,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: AppStyles.ticketColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21),
                        )),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BarcodeWidget(
                            height: 70,
                            drawText: false,
                            color: AppStyles.textColor,
                            width: double.infinity,
                            data: "www.google.com",
                            barcode: Barcode.code128()),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    // color: Colors.red,
                    padding: EdgeInsets.only(left: 16),
                    child: TicketView(
                      ticket: ticketList[ticketIndex],
                    ),
                  ),
                ]),
            Postionedticketcircle(
              pos: true,
            ),
            Postionedticketcircle(),
          ],
        ));
  }
}
