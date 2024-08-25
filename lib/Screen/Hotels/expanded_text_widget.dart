import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';
import 'package:ticket_app/controller/text_expention_controller.dart';

class ExpandedTextWidget extends StatelessWidget {
  ExpandedTextWidget({super.key, required this.text});
  final String text;
  final TextExpentionController controller = Get.put(TextExpentionController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Column(
        children: [
          Text(
            text,
            maxLines: controller.isExpended.value == true ? null : 3,
            overflow: controller.isExpended.value == true
                ? TextOverflow.visible
                : TextOverflow.ellipsis,
          ),
          GestureDetector(
              onTap: () {
                controller.toggleText();
              },
              child: Text(
                controller.isExpended.value == true ? "More" : "Less",
                style: AppStyles.textStyle.copyWith(color: Colors.blue),
              )),
        ],
      );
    });
  }
}
