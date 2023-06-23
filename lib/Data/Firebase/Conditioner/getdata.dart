import 'package:get/get.dart';

import 'package:firebase_database/firebase_database.dart';

class GetCondetionerData extends GetxController {
  late final dbref = FirebaseDatabase.instance.ref();
  String powerState = '0';
  void getData() {
    try {
      dbref.child('HOMESERVICES/CONDITIONER/TEMP').onValue.listen((event) {
        powerState = event.snapshot.value.toString();
        print(powerState);
      });
    } catch (error) {
      print(error);
    }
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
