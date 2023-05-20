import 'package:flutter/material.dart';
import 'package:home_service/Core/Constants/image_link.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';

class LampSingleRoom extends StatelessWidget {
  const LampSingleRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          TitleOfPage(title: "Room 1", imageUrl: AppImageAssets.lamp),

        ],
      ),
    );
  }
}
