import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Data/Static/home_device_data.dart';

class CustomHomeCatagories extends StatelessWidget {
  final void Function()? onTap;
  const CustomHomeCatagories({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: .7,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10.h,
            ),
            itemCount: homeDeviceData.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: homeDeviceData[index].onTap,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: primaryColor, width: 1),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //! Add Images Later ;
                        Image.asset(
                          color: Colors.black,
                          homeDeviceData[index].image!,
                          width: 80.w,
                        ),
                        Container(
                          width: double.maxFinite,
                          height: 30.h,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: primaryColor.withOpacity(.5)),
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
