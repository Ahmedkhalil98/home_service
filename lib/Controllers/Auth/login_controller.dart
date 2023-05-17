import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Core/Services/services.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;
  bool fieldState = true;
  MyServices myServices = Get.put(MyServices());
  void isVisible() {
    fieldState = !fieldState;
    update();
  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoutes.signUpScreen);
  }

  @override
  login() async {
    var formData = formState.currentState;
    if (formData!.validate()) {

      update();
    }
  }

  @override
  goToForgetPassword() {
   // Get.toNamed(AppRoutes.forgetPasswordScreen);
  }

  @override
  void onInit() {

    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
