// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/app_routes.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/Base/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 0.9),
            itemCount: hotelsList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelsList[index];
              return HotelGridView(hotel: singleHotel, index: index);
            },
          ),
        ),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(6.0),
      // width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: GestureDetector(
              onTap: () {
                print("index is Clicked $index");
                // Navigator.pushNamed(context,AppRoutes.hotelsTest);
                Navigator.pushNamed(context, AppRoutes.hotelsDetails,
                    arguments: {'index': index});

              },
              child: Container(
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${hotel['image']}"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotel['destination'],
              style: AppStyles.headingStyle3
                  .copyWith(color: Colors.amber.shade200),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  hotel['country'],
                  style: AppStyles.headingStyle4.copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                width: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  "\$${hotel['price']}/night",
                  style: AppStyles.headingStyle3
                      .copyWith(color: Colors.amber.shade200, fontSize: 12),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
