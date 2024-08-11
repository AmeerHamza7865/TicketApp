import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/Media.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class Hotels extends StatelessWidget {
  const Hotels({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.6,
        height: 350,
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(24)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(

                  // color: AppStyles.ticketOrange,
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    // fit: BoxFit.cover,
                    fit: BoxFit.cover,
                    image: AssetImage(AppMedia.hotel),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Open Space",
                style: AppStyles.headingStyle1
                    .copyWith(color: AppStyles.kakiColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "Landon",
                style: AppStyles.headingStyle2.copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                "\$25/Night",
                style: AppStyles.headingStyle2
                    .copyWith(color: AppStyles.kakiColor),
              ),
            ),
          ],
        ));
  }
}
