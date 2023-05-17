import 'package:flutter/material.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Mood_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Sleep_mode_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Swing_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Temperature_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/Timer_widget.dart';
import 'package:home_service/Screens/conditioner_Screens/widgets/power_widgets.dart';

class SingleRoom extends StatelessWidget {
  const SingleRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarWidget(),
      body: Column(
        children: [
          TitleOfPage(
              title: "Room 1", imageUrl: "assets/conditioner_green.png"),
          PowerWidget(),
          TemperatureWidget(),
          MoodWidget(),
          Swingwidget(),
          TimerWidget(),
          SleepModeWidget(),
        ],
      ),
    );
  }
}
