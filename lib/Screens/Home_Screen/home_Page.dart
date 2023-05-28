import 'package:flutter/material.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/Screens/Home_Screen/Widget/custom_home_catagories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: AppBarWidget(isHomePage: true), body: CustomHomeCatagories());
  }
}
