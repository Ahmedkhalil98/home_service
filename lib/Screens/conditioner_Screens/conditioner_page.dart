import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:home_service/Controllers/Conditioner/read_data_controller.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/image_link.dart';
import 'package:home_service/General_Widgets/App_Bar_widget.dart';
import 'package:home_service/General_Widgets/Title_of_Page.dart';
import 'package:home_service/Screens/conditioner_Screens/insert_data_screen.dart';
import 'package:home_service/Screens/conditioner_Screens/single_room.dart';

class ConditionerPage extends StatelessWidget {
  const ConditionerPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ConditionerReadData());
    return Scaffold(
      appBar: const AppBarWidget(isHomePage: false),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: primaryColor,
          label: const Icon(Icons.add),
          onPressed: () {
            Get.to(const InsertDataScreen());
          }),
      body: GetBuilder<ConditionerReadData>(builder: (controller) {
        
        return Column(
          children: [
            TitleOfPage(
                isActive: false,
                isSingleRoom: false,
                totalDevice: controller.conditionerModelList.length,
                onDevice: 0,
                title: "Conditioner",
                imageUrl: AppImageAssets.conditioner),
            SizedBox(
              height: 400.h,
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.conditionerModelList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //! go to the single Room
                      //Get.toNamed(AppRoutes.singleRoom);
                      Get.to(const SingleRoomConditioner() , arguments: {
                        'conditionerModel' : controller.conditionerModelList[index]
                      });
                    },
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                      height: 64.h,
                      decoration: BoxDecoration(
                        color: itemsColor,
                        border: Border.all(width: 1, color: primaryColor),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SvgPicture.asset(
                              height: 50, AppImageAssets.conditioner),
                          Text(
                            controller.conditionerModelList[index].key!,
                            style: TextStyle(
                                fontSize: 16.sp,
                                color: primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Icon(
                            Icons.play_arrow_outlined,
                            color: primaryColor,
                            size: 25.h,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
    );
  }
}
