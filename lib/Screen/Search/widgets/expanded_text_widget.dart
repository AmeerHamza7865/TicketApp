import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key, required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  _toggleValue() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.text,
          maxLines: isExpanded == true ? null : 6,
          overflow:
              isExpanded == true ? TextOverflow.visible : TextOverflow.ellipsis,
        ),
        GestureDetector(
          onTap: () {
            _toggleValue();
          },
          child: Text(
            isExpanded == true ? "Less" : "More",
            style: AppStyles.textStyle.copyWith(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
