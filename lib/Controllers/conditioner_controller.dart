import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:home_service/Core/Functions/snackbar_field_check.dart';

class GetCondetionerData extends GetxController {
  late final dbref = FirebaseDatabase.instance.ref();

  //? Validation Variable:
  int minTemp = 17;
  int maxTemp = 40;
  int minFanSpeed = 0;
  int maxFanSpeed = 5;
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
      } else if (fieldName == 'CONDITIONER/ROOM1/FANSPEED') {
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
    if (tempreature > 40 - 1) {
      showSnackBar();
    } else {
      tempreature++;
      updateData('TEMP', tempreature.toString());
      update();
    }
  }

  //! Decrement Temp:
  void decTemp() {
    if (tempreature < 18 + 1) {
      showSnackBar();
    } else {
      tempreature--;
      updateData('TEMP', tempreature.toString());
      update();
    }
  }

  //! Increment Fan Speed:
  void incFanSpeed() {
    if (fanSpeed > maxFanSpeed - 1) {
      showSnackBar();
    } else {
      fanSpeed++;
      updateData('FANSPEED', fanSpeed.toString());
      update();
    }
  }

  //! Decrement Fan Speed:
  void decFanSpeed() {
    if (fanSpeed < minFanSpeed + 1) {
      showSnackBar();
    } else {
      fanSpeed--;
      updateData('FANSPEED', fanSpeed.toString());
      update();
    }
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
