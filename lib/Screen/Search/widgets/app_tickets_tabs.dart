// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_app/Screen/Search/widgets/app_text_icon.dart';

class AppTicketsTabs extends StatelessWidget {
  const AppTicketsTabs(
      {super.key, required this.FirstTabText, required this.SecondTabText});
  final String FirstTabText;
  final String SecondTabText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Color(0xFFF4F6FD)),
      child: Row(
        children: [
          AppTab(
            tabText: FirstTabText,
          ),
          AppTab(
            tabText: SecondTabText,
            tabBorder: true,
            tabColor: true,
          ),
        ],
      ),
    );
  }
}

class AppTab extends StatelessWidget {
  final String tabText;
  final bool tabBorder;
  final bool tabColor;
  const AppTab(
      {super.key,
      this.tabText = "",
      this.tabBorder = false,
      this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      child: Center(child: Text(tabText)),
      decoration: BoxDecoration(
          borderRadius: tabBorder == true
              ? BorderRadius.horizontal(
                  right: Radius.circular(50),
                )
              : BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
          color: tabColor == false ? Colors.white : Colors.transparent),
    );
  }
}
