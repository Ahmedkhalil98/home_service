import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/Auth/login_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Functions/alert_exit_app.dart';
import 'package:home_service/Screens/Auth/Widget/custom_button.dart';
import 'package:home_service/Screens/Auth/Widget/custom_textfield.dart';
import 'package:home_service/Screens/Auth/Widget/footer_text.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginControllerImp());
    return Scaffold(
      backgroundColor: white,
      body: WillPopScope(
        onWillPop: alertExitApp,
        child: GetBuilder<LoginControllerImp>(
            builder: (controller) => Container(
                  padding: const EdgeInsets.all(15),
                  child: Form(
                    key: controller.formState,
                    child: ListView(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          'assets/login.png',
                          width: 175,
                          height: 175,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Text(
                          "Welcome Back".tr,
                          textAlign: TextAlign.center,
                          style: titleStyle.copyWith(
                              fontWeight: FontWeight.w100, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Log In with your Email and Password ".tr,
                          textAlign: TextAlign.center,
                          style: titleStyle.copyWith(
                            height: 1.5,
                            fontWeight: FontWeight.w200,
                            fontSize: 13,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomTextFieldAuth(
                            title: 'E-mail',
                            controller: controller.emailController,
                            icon: Icons.email_outlined),
                        CustomTextFieldAuth(
                            title: 'Password',
                            controller: controller.passwordController,
                            icon: Icons.password_outlined),
                        GestureDetector(
                          onTap: () {
                            controller.goToForgetPassword();
                          },
                          child: Text("Forget Password",
                              textAlign: TextAlign.end, style: titleStyle),
                        ),
                        CustomAuthButton(
                          press: () {
                            controller.login();
                          },
                          title: 'Log In'.tr,
                        ),
                        FooterText(
                          press: () {
                            controller.goToSignUp();
                          },
                          buttonTitle: 'Sign Up'.tr,
                          title: 'Don\'t Have an Account? '.tr,
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
