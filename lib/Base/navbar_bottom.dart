// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/Screen/Home/home_screen.dart';
import 'package:ticket_app/Screen/Profile/profile.dart';
import 'package:ticket_app/Screen/Search/search_screen.dart';
import 'package:ticket_app/Screen/tickets/ticket_Screen.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  final appScreen = [
    HomeScreen(),
    SearchScreen(),
    TicketScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    print("selected tab index: ${controller.selectedIndex.value}");
    return Obx(() {
      return Scaffold(
        body: appScreen[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            onTap: controller.onTab_Index,
            currentIndex: controller.selectedIndex.value,
            selectedItemColor: Colors.blueGrey,
            unselectedItemColor: const Color(0xFF526400),
            showSelectedLabels: false,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                  label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                  label: "Tickets"),
              BottomNavigationBarItem(
                  icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                  activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                  label: "Profile"),

              // BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
              // BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Tickets"),
              // BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
            ]),
      );
    });
  }
}
