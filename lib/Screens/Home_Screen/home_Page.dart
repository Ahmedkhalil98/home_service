import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Data/Static/device_name.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(),
        body: Container(
            padding: const EdgeInsets.all(15),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .8,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                ),
                itemCount: deviceName.length,
                itemBuilder: (context, index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //! Add Images Later ;
                          Image.asset(
                            deviceName[index].image!,
                            width: 130.w,
                          ),
                          Container(
                            width: double.maxFinite,
                            height: 40.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: primaryColor.withOpacity(.5)),
                            child: Text(
                              deviceName[index].title!,
                              style: titleStyle,
                            ),
                          )
                        ],
                      ));
                })));
  }
}
