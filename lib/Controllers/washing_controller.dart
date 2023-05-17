import 'package:get/get.dart';

class WashongController extends GetxController {
  String selectedItem = "Cotton 20 C";

  void changeValue(String NewValue) {
    selectedItem = NewValue;
    update();
  }
}
