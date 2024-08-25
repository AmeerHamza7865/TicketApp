// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/Base/app_routes.dart';
import 'package:ticket_app/Base/navbar_bottom.dart';
import 'package:ticket_app/Screen/Hotels/hotels_details.dart';
import 'package:ticket_app/Screen/Hotels/all_hotels.dart';
import 'package:ticket_app/Screen/Home/all_tickets.dart';
import 'package:ticket_app/Screen/Hotels/hotels_data.dart';
import 'package:ticket_app/Screen/tickets/ticket_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hamza APP',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: BottomNavbar(),
      routes: {
        AppRoutes.homePage: (context) => BottomNavbar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.TicketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.hotelsDetails: (context) => const HotelsDetails(),
        AppRoutes.hotelsTest: (context) => const HotelsData(),
        // "/": (context) => BottomNavbar(),
        // "/all_tickets": (context) => AllTickets(),
      },
    );
  }
}
