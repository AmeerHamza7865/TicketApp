// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/double_text_widget.dart';
import 'package:ticket_app/Base/Widgets/heading_text.dart';
import 'package:ticket_app/Base/Widgets/ticket_view.dart';
import 'package:ticket_app/Base/app_routes.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/Base/utils/all_json.dart';
import 'package:ticket_app/Screen/Home/Widget/hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning", style: AppStyles.headingStyle2),
                        SizedBox(
                          height: 5,
                        ),
                      HeadingTextWidget(text: "Book Tickets",isColor: false,),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(AppMedia.logo),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 246, 246, 247),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Color(0xFFBFC205),
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                DoubleTextApp(
                  bigText: 'Upcoming Flights',
                  smallText: 'View all',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map((singleTicket) => GestureDetector(
                              onTap: () {
                                var index = ticketList.indexOf(singleTicket);

                                Navigator.pushNamed(
                                    context, AppRoutes.TicketScreen,
                                    arguments: {"index": index});
                              },
                              child: TicketView(
                                ticket: singleTicket,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DoubleTextApp(
                  bigText: "Hotels",
                  smallText: "View All",
                  func: () {
                    Navigator.pushNamed(context, AppRoutes.allHotels);
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: hotelsList
                          .take(2)
                          .map((firstHotel) => GestureDetector(
                                onTap: () {
                                  var index = hotelsList.indexOf(firstHotel);
                                  Navigator.pushNamed(
                                      context, AppRoutes.hotelsDetails,
                                      arguments: {'index': index});
                                },
                                child: Hotels(
                                  hotel: firstHotel,
                                ),
                              ))
                          .toList(),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
