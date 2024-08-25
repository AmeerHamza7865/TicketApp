import 'package:get/get.dart';

class TextExpentionController extends GetxController {
  var isExpended = false.obs;
  void toggleText() {
    isExpended.value = !isExpended.value;

    print("value is :");
  }
}
