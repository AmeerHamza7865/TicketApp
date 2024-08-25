import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;

  void onTab_Index(int index) {
    selectedIndex.value = index;
    print("selected nav tab in controller $index");
  }
}
