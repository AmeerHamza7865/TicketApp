import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class ExpanedTextview extends StatelessWidget {
  const ExpanedTextview({super.key});

  @override
  Widget build(BuildContext context) {
    bool isExpended = false;
    _toggleText() {
      isExpended = !isExpended;
      print("value is :");
    }

    return Column(
      children: [
        Text(
          "final String text;",
          maxLines: isExpended == true ? null : 3,
          overflow:
              isExpended == true ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        GestureDetector(
            onTap: () {
              _toggleText();
            },
            child: Text(
              isExpended == true ? "More" : "Less",
              style: AppStyles.textStyle.copyWith(color: Colors.blue),
            )),
      ],
    );
    ;
  }
}
