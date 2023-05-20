import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final bool isHomePage;
  @override
  Size get preferredSize => Size.fromHeight(60.h);
  const AppBarWidget({super.key, required this.isHomePage});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      centerTitle: true,
      toolbarHeight: 60.h,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.h,
            width: isHomePage == true ? 280.w : 220.w,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: primaryColor,
                    )),
                contentPadding: const EdgeInsets.only(top: 5, left: 10),
                hintText: "Search ...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide: const BorderSide(color: Colors.grey)),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mic,
                size: 35.w,
              ))
        ],
      ),
    );
  }
}
