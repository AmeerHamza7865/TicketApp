// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return  Container(
      padding: EdgeInsets.all(6.0),
                  width: size.width*0.6,
                  height: 350,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 170,
                        decoration: BoxDecoration(
                          color: AppStyles.primaryColor,
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(AppMedia.roomImages),
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("Open Space",style: AppStyles.headingStyle1.copyWith(color: Colors.amber.shade200),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("Landon",style: AppStyles.headingStyle2.copyWith(color: Colors.white),),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Text("\$25/night",style: AppStyles.headingStyle1.copyWith(color: Colors.amber.shade200),),
                      ),
                    ],
                  ),
                );
              
  }
}