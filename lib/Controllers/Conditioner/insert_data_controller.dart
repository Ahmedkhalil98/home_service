import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class InsertConditionerDataContoller extends GetxController {
  DatabaseReference databaseReference = FirebaseDatabase.instance.ref();

  late TextEditingController roomName;
  late TextEditingController minTemp;
  late TextEditingController maxTemp;
  late TextEditingController maxFanSpeed;
  late Map<String, dynamic> data = {
    'POWER': '0',
    'MOOD': 'auto',
    'FANSPEED': '0',
    'SLEEPMOOD': '0',
    'SWING': '1',
    'TEMP': '35',
    'TIMER': '0',
    'MINTEMP': minTemp.text,
    'MAXTEMP': maxTemp.text,
    'MINFANSPEED': '0',
    'MAXFANSPEED': maxFanSpeed.text,
  };
  void insertData(String roomName , String deviceType) {
    databaseReference
        .child('HOMESERVICES')
        .child(deviceType)
        .child(roomName)
        //.push()
        .set(data)
        .then((value) {
      print('Success Data Added');
    });
  }

  @override
  void onInit() {
    roomName = TextEditingController();
    minTemp = TextEditingController();
    maxTemp = TextEditingController();
    maxFanSpeed = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    roomName.dispose();
    minTemp.dispose();
    maxTemp.dispose();
    maxFanSpeed.dispose();
    super.dispose();
  }
}
