import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/Conditioner/insert_data_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Screens/conditioner_Screens/conditioner_page.dart';

class InsertDataScreen extends StatelessWidget {
  const InsertDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(InsertConditionerDataContoller());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Add Device',
          style: titleStyle.copyWith(color: white),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child:
            GetBuilder<InsertConditionerDataContoller>(builder: (controller) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Text(
              //   'Add Field',
              //   style: titleStyle,
              // ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldInsertData(
                title: 'Room Name',
                iconData: Icons.room_preferences_outlined,
                controller: controller.roomName,
              ),
              CustomTextFieldInsertData(
                title: 'Min Tempreature',
                iconData: Icons.room_preferences_outlined,
                controller: controller.minTemp,
              ),
              CustomTextFieldInsertData(
                title: 'Max Tempreature',
                iconData: Icons.room_preferences_outlined,
                controller: controller.maxTemp,
              ),
              CustomTextFieldInsertData(
                title: 'Max Fan Speed',
                iconData: Icons.room_preferences_outlined,
                controller: controller.maxFanSpeed,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(Get.width, 45),
                      backgroundColor: primaryColor),
                  onPressed: () {
                    controller.insertData(controller.roomName.text , 'CONDITIONER');
                    Get.to(const ConditionerPage());
                  },
                  child: Text(
                    'Add Device',
                    style: titleStyle.copyWith(color: white),
                  ))
            ],
          );
        }),
      ),
    );
  }
}

class CustomTextFieldInsertData extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final IconData iconData;
  const CustomTextFieldInsertData({
    super.key,
    required this.controller,
    required this.title,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        controller: controller,
        style: titleStyle.copyWith(
            color: primaryColor, fontWeight: FontWeight.w100, fontSize: 15),
        textAlign: TextAlign.start,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          label: Text(
            title,
            style: titleStyle.copyWith(
                color: primaryColor, fontWeight: FontWeight.w100, fontSize: 15),
          ),
          prefixIcon: Icon(
            iconData,
            color: primaryColor,
          ),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: itemsColor, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: primaryColor, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
