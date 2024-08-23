// ignore_for_file: prefer_const_constructors

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/Base/Widgets/heading_text.dart';
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
                
                  HeadingTextWidget(text: "Book Tickets",isColor: false,),
                  Text(
                    "New York",
                    style: AppStyles.textStyle.copyWith(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500),
                  ),
                 SizedBox(height: 8,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),
                    // width: 100,
                    // height: 30,
                    decoration: BoxDecoration(
                      color: AppStyles.profileLocationColor,
                      borderRadius: BorderRadius.circular(100)
                    ),
                  
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:AppStyles.profileTextColor,
                          ),
                          child: Icon(FluentSystemIcons.ic_fluent_shield_filled,color: Colors.white,size: 15,),
                        ),
                        SizedBox(width: 5,),
                        Text("Premium status",style: TextStyle(color: AppStyles.profileTextColor, fontWeight: FontWeight.w500),),

                        
                      ],
                    ),
                  ),

                ],
              ),
            
            Expanded(child: Container()),
            Text("Edit",style: TextStyle(color: AppStyles.primaryColor,fontWeight: FontWeight.w300),),
            ],
          ),
        ],
      ),
    );
  }
}
