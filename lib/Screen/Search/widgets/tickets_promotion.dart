import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

class TicketsPromotion extends StatelessWidget {
  const TicketsPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    var coffee = Emoji('coffee', '☕');
    var heart = Emoji('heart', '❤️');
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: size.width * .42,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          height: 435,
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
              ),
              Text(
                "20% Discount of the early booking of this flight, Don't miss ",
                style: AppStyles.headingStyle2,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: 210,
                  width: size.width * .44,
                  decoration: BoxDecoration(
                    color: Color(0xFF3AB8B8),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor Survey",
                        style: AppStyles.headingStyle2.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Take the survey about services and get discounts",
                        style: AppStyles.headingStyle2.copyWith(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: AppStyles.circleColor)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 210,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.red),
              child: Column(
                children: [
                  Text(
                    "Take Love",
                    style:
                        AppStyles.headingStyle2.copyWith(color: Colors.white),
                  ),
                  Text(
                    "😘🤩",
                    style: AppStyles.headingStyle2.copyWith(fontSize: 35),
                  ),
                  Text(
                    coffee.code,
                    style:
                        AppStyles.headingStyle1.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
