import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Data/Static/home_device_data.dart';

class CustomHomeCatagories extends StatelessWidget {
  const CustomHomeCatagories({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: .9,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
            ),
            itemCount: homeDeviceData.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: homeDeviceData[index].onTap,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: primaryColor, width: 2),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //! Add Images Later ;
                        SvgPicture.asset(
                            height: 100, homeDeviceData[index].image!),
                        Container(
                          width: double.maxFinite,
                          height: 40.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: primaryColor),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: secColor),
                          child: Text(
                            homeDeviceData[index].title!,
                            style: titleStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }));
  }
}
