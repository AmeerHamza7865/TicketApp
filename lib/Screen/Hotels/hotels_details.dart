// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/Base/utils/all_json.dart';
import 'package:ticket_app/Screen/Search/widgets/expanded_text_widget.dart';

class HotelsDetails extends StatefulWidget {
  const HotelsDetails({super.key});

  @override
  State<HotelsDetails> createState() => _HotelsDetailsState();
}

class _HotelsDetailsState extends State<HotelsDetails> {
  late int index = 0;
  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args['index'];
    print("index is Coming : $index");
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                // title: Text(hotelsList[index]["destination"]),
                background: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/${hotelsList[index]["image"]}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        color: Colors.black.withOpacity(0.3),
                        child: Text(
                          hotelsList[index]["destination"],
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 10.0,
                                  color: AppStyles.primaryColor,
                                  offset: Offset(2.0, 2.0),
                                )
                              ]),
                        )))
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.all(16),
              child: ExpandedTextWidget(text: hotelsList[index]["details"]),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
           Container(
              height: 200.0,
              child: ListView.builder(
                  itemCount: hotelsList[index]["images"].length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, imageindex) {
                    return Container(
                        margin: EdgeInsets.all(16),
                        color: Colors.red,
                        child: Image.asset(
                            fit: BoxFit.fill,
                            width: 200,
                            height: 200,
                            "assets/images/${hotelsList[index]["images"][imageindex]}"));
                  }),
            )
          ]))
        ],
      ),
    );
  }
}
