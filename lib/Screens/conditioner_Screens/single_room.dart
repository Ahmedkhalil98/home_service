import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/conditioner_controller.dart';
import 'package:home_service/Core/Constants/image_link.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Mood_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Sleep_mode_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Swing_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Temperature_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Timer_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/fan_speed_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/power_widgets.dart';

class SingleRoomConditioner extends StatelessWidget {
  const SingleRoomConditioner({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(GetCondetionerData());
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      body: Column(
        children: [
          GetBuilder<GetCondetionerData>(builder: (controller) {
            return TitleOfPage(
                isActive: controller.powerState == 1 ? true : false,
                isSingleRoom: true,
                totalDevice: 10,
                onDevice: 5,
                title: "Room 1",
                imageUrl: AppImageAssets.conditioner);
          }),
          const PowerWidget(),
          const TemperatureWidget(),
          const FanSpeedWidget(),
          const MoodWidget(),
          const Swingwidget(),
          const TimerWidget(),
          const SleepModeWidget(),
        ],
      ),
    );
  }
}
