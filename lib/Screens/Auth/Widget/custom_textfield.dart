import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:home_service/Controllers/Auth/login_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Functions/input_validator.dart';

class CustomTextFieldAuth extends StatelessWidget {
  TextEditingController controller;
  String title;
  IconData icon;
  bool? isPhone;
  CustomTextFieldAuth(
      {Key? key,
      required this.title,
      required this.controller,
      required this.icon,
      this.isPhone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginControllerImp>(
        init: LoginControllerImp(),
        builder: (control) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: TextFormField(
              validator: (value) {
                return validInput(value!, 5, 100, title);
              },
              keyboardType:
                  isPhone == true ? TextInputType.phone : TextInputType.text,
              controller: controller,
              style: titleStyle.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w100,
                  fontSize: 15),
              textAlign: TextAlign.start,
              obscureText: title != 'Password' ? false : control.fieldState,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                label: Text(
                  title.tr,
                  style: titleStyle.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 15),
                ),
                prefixIcon: Icon(
                  icon,
                  color: primaryColor,
                ),
                suffixIcon: title == "Password"
                    ? IconButton(
                        onPressed: control.isVisible,
                        icon: control.fieldState == true
                            ? const Icon(
                                Icons.visibility_outlined,
                                color: primaryColor,
                              )
                            : const Icon(Icons.visibility_off_outlined,
                                color: primaryColor),
                      )
                    : null,
                border: const OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: primaryColor, width: 2),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
          );
        });
  }
}
