// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/app_routes.dart';
import 'package:ticket_app/Base/navbar_bottom.dart';
import 'package:ticket_app/Screen/Home/Widget/hotels_details.dart';
import 'package:ticket_app/Screen/Home/all_hotels.dart';
import 'package:ticket_app/Screen/Home/all_tickets.dart';
import 'package:ticket_app/Screen/tickets/ticket_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamza APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: BottomNavbar(),
      routes: {
        AppRoutes.homePage: (context) => const BottomNavbar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.TicketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelsDetails: (context) => const HotelsDetails(),
        // "/": (context) => BottomNavbar(),
        // "/all_tickets": (context) => AllTickets(),
      },
    );
  }
}
