// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/ticket_view.dart';
import 'package:ticket_app/Base/app_routes.dart';
import 'package:ticket_app/Base/utils/all_json.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(singleTicket);
                          print("I Am Tapped on Ticket index $index");
                          Navigator.pushNamed(context, AppRoutes.TicketScreen,
                              arguments: {"index": index});
                        },
                        child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TicketView(ticket: singleTicket)),
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
