import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_database/firebase_database.dart';

class GetCondetionerData extends GetxController {
  late final dbref = FirebaseDatabase.instance.ref();

  //?Variables:
  int tempreature = 0;
  int fanSpeed = 0;
  int powerState = 1;
  String mode = '';
  int swing = 0;
  int timer = 0;
  int sleepMode = 0;
  List<String> modeState = [
    'auto',
    'cool',
    'dry',
    'heat',
    'fan',
  ];
  List<IconData> modeStateIcon = [
    Icons.autorenew,
    Icons.ac_unit,
    Icons.water_drop,
    Icons.sunny,
    Icons.mode_fan_off,
  ];
  //? Get Data:
  void getData(String fieldName) {
    dbref.child('HOMESERVICES/$fieldName').onValue.listen((event) {
      if (fieldName == 'CONDITIONER/ROOM1/TEMP') {
        tempreature = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'CONDITIONER/ROOM1/POWER') {
        powerState = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'CONDITIONER/ROOM1/MOOD') {
        mode = event.snapshot.value.toString();
        update();
      } else if (fieldName == 'CONDITIONER/ROOM1/SWING') {
        swing = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'CONDITIONER/ROOM1/TIMER') {
        timer = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'CONDITIONER/ROOM1/SLEEPMODE') {
        sleepMode = int.parse(event.snapshot.value.toString());
        update();
      }
      else if (fieldName == 'CONDITIONER/ROOM1/FANSPEED') {
        fanSpeed = int.parse(event.snapshot.value.toString());
        update();
      }
    });
  }

  //? Update Data :
  void updateData(String updatedData, String newVal) async {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref("HOMESERVICES/CONDITIONER/ROOM1/");
    await ref.update({
      updatedData: newVal,
    });
  }

  //! Increment Temp:
  void incTemp() {
    
    tempreature++;
    updateData('TEMP', tempreature.toString());
    update();
  }

  //! Decrement Temp:
  void decTemp() {
    tempreature--;
    updateData('TEMP', tempreature.toString());
    update();
  }
  //! Increment Fan Speed:
  void incFanSpeed() {
    fanSpeed++;
    updateData('FANSPEED', fanSpeed.toString());
    update();
  }

  //! Decrement Fan Speed:
  void decFanSpeed() {
    fanSpeed--;
    updateData('FANSPEED', fanSpeed.toString());
    update();
  }

  @override
  void onInit() {
    getData('CONDITIONER/ROOM1/TEMP');
    getData('CONDITIONER/ROOM1/POWER');
    getData('CONDITIONER/ROOM1/MOOD');
    getData('CONDITIONER/ROOM1/SWING');
    getData('CONDITIONER/ROOM1/TIMER');
    getData('CONDITIONER/ROOM1/SLEEPMODE');
    super.onInit();
  }
}
