import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_themes.dart';
import 'package:home_service/Core/Constants/image_link.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(height: Get.height / 5.1.h, color: primaryColor),
                Positioned(
                    top: Get.height / 8.h,
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(100)),
                      child: CircleAvatar(
                        radius: 40.r,
                        backgroundColor: Colors.grey[100],
                        backgroundImage:
                            const AssetImage(AppImageAssets.avatar),
                      ),
                    )),
              ]),
          SizedBox(height: 65.h),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Card(
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                ListTile(
                  // onTap: () {},
                  trailing: Switch(
                      activeColor: primaryColor,
                      onChanged: (val) {},
                      value: true),
                  title: Text(
                    "Disable Notificatios",
                    style: titleStyle.copyWith(fontSize: 16),
                  ),
                ),
                //! Account Preview:
                CustomSettingTile(
                  title: "Account Preview",
                  iconData: Icons.person_outline,
                  onTap: () {},
                ),
                //! App Theme :
                CustomSettingTile(
                  title: "App Theme",
                  iconData: Icons.mode_outlined,
                  onTap: () {},
                ),
                //! App Language:
                CustomSettingTile(
                  title: "App Language",
                  iconData: Icons.language_outlined,
                  onTap: () {},
                ),
                //! About us :
                CustomSettingTile(
                  title: "About us",
                  iconData: Icons.help_outline_rounded,
                  onTap: () {},
                ),
                //! Contact us:
                CustomSettingTile(
                  title: "Contact us",
                  iconData: Icons.call_outlined,
                  onTap: () {},
                ),
                //! Logout:
                CustomSettingTile(
                  title: "Logout",
                  iconData: Icons.exit_to_app,
                  onTap: () {},
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}

class CustomSettingTile extends StatelessWidget {
  final String title;
  final IconData iconData;
  final void Function()? onTap;
  const CustomSettingTile({
    super.key,
    required this.title,
    required this.iconData,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: Icon(
        iconData,
        color: black,
      ),
      title: Text(
        title,
        style: titleStyle.copyWith(fontSize: 16.sp),
      ),
    );
  }
}
