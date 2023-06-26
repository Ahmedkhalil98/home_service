import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:home_service/Core/Functions/snackbar_field_check.dart';
import 'package:home_service/Data/Models/conditioner_model.dart';

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
  String? key;
  ConditionerModel? conditionerModel;
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
  void getData(String fieldName, String key) {
    dbref.child('HOMESERVICES/CONDITIONER/$key/$fieldName').onValue.listen((event) {
      if (fieldName == 'TEMP') {
        tempreature = int.parse(event.snapshot.value.toString());
        update();
      } 
      else if (fieldName == 'POWER') {
        powerState = int.parse(event.snapshot.value.toString());
        update();
      } 
      else if (fieldName == 'MOOD') {
        mode = event.snapshot.value.toString();
        update();
      } 
      else if (fieldName == 'SWING') {
        swing = int.parse(event.snapshot.value.toString());
        update();
      }
      else if (fieldName == 'TIMER') {
        timer = int.parse(event.snapshot.value.toString());
        update();
      } 
      else if (fieldName == 'SLEEPMODE') {
        sleepMode = int.parse(event.snapshot.value.toString());
        update();
      } 
      else if (fieldName == 'FANSPEED') {
        fanSpeed = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'MAXFANSPEED') {
        maxFanSpeed = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'MAXTEMP') {
        maxTemp = int.parse(event.snapshot.value.toString());
        update();
      } else if (fieldName == 'MINTEMP') {
        minTemp = int.parse(event.snapshot.value.toString());
        update();
      }
    });
  }

  //? Update Data :
  void updateData(String updatedData, String newVal) async {
    DatabaseReference ref =
        FirebaseDatabase.instance.ref("HOMESERVICES/CONDITIONER/$key/");
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
    conditionerModel = Get.arguments['conditionerModel'];
    key = conditionerModel!.key;
    getData('TEMP', key!);
    getData('POWER', key!);
    getData('MOOD', key!);
    getData('SWING', key!);
    getData('TIMER', key!);
    getData('SLEEPMODE', key!);
    super.onInit();
  }
}
