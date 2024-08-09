import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
      // print("Constraints Width ${(constraint.constrainWidth()/randomDivider).floor()}");
      return Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate((constraint.constrainWidth()/randomDivider).floor(),(index)=>SizedBox(
          width: 3,
          height: 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white
            ),
          ),
        )),
      );
    });
  }
}
