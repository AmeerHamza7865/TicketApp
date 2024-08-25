// ignore_for_file: prefer_const_constructors

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/app_column_layout.dart';
import 'package:ticket_app/Base/Widgets/heading_text.dart';
import 'package:ticket_app/Base/Widgets/text_style_third.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //show Logo here
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage(AppMedia.logo))),
              ),
              // show text here
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeadingTextWidget(
                    text: "Book Tickets",
                    isColor: false,
                  ),
                  Text(
                    "New York",
                    style: AppStyles.textStyle.copyWith(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
                    // width: 100,
                    // height: 30,
                    decoration: BoxDecoration(
                        color: AppStyles.profileLocationColor,
                        borderRadius: BorderRadius.circular(100)),

                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppStyles.profileTextColor,
                          ),
                          child: Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Premium status",
                          style: TextStyle(
                              color: AppStyles.profileTextColor,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              Expanded(child: Container()),
              Text(
                "Edit",
                style: TextStyle(
                    color: AppStyles.primaryColor, fontWeight: FontWeight.w300),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),

          //Divider
          Divider(
            color: Colors.grey.shade300,
          ),
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      maxRadius: 25,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_circle_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextStyleThird(
                          text: "You\'v got a new reward",
                          isColor: null,
                        ),
                        Text(
                          "You have 95 flights in year",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              //Circle positon COde
              Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 18, color: Color(0xFF264CD2)),
                    ),
                  ))
            ],
          ),

          SizedBox(
            height: 25,
          ),
          Text(
            "Accumulated miles",
            style: AppStyles.headingStyle2,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: AppStyles.bgColor,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  "982356",
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w600,
                      color: AppStyles.textColor),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accured",
                      style: AppStyles.headingStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "25th july",
                      style: AppStyles.headingStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      topText: "24 042",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      topText: "Airline CO",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      topText: "23",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      topText: "McDoanal's",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Divider(
                  color: Colors.grey.shade300,
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      topText: "54 072",
                      bottomText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      topText: "Airline PIA",
                      bottomText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "How to get more miles",
                    style: AppStyles.textStyle
                        .copyWith(color: AppStyles.primaryColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
