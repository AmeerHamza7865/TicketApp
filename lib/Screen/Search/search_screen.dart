// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/double_text_widget.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/Screen/Search/widgets/app_text_icon.dart';
import 'package:ticket_app/Screen/Search/widgets/app_tickets_tabs.dart';
import 'package:ticket_app/Screen/Search/widgets/find_tickets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "What are\nyou looking for?",
              style: AppStyles.headingStyle1.copyWith(fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            AppTicketsTabs(),
            SizedBox(
              height: 25,
            ),
            AppTextIcon(
              icon: Icons.flight_takeoff_outlined,
              text: "Departure",
              iconColor: AppStyles.planeColor,
            ),
            SizedBox(
              height: 20,
            ),
            AppTextIcon(
                text: "Arrival",
                icon: Icons.flight_land_outlined,
                iconColor: AppStyles.planeColor),
            SizedBox(
              height: 25,
            ),
            FindTickets(),
            SizedBox(
              height: 40,
            ),
            DoubleTextApp(
                bigText: "Upcoming Flights",
                smallText: "View All",
                func: () {}),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  width: size.width * .42,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          spreadRadius: 2,
                          blurRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: 190,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(AppMedia.planeSit))),
                      )
                    ],
                  ),
                )
              ],
            )
          ]),
    );
  }
}
