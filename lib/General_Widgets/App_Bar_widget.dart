import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_service/Core/Constants/app_themes.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.h);
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryColor,
      centerTitle: true,
      toolbarHeight: 60.h,
      elevation: 0,
      title: Container(
        margin: EdgeInsets.symmetric(vertical: 50.h),
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: white, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: white, width: 2),
                  borderRadius: const BorderRadius.all(Radius.circular(20)))),
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 8.w, left: 4.w),
          child: Icon(
            Icons.mic,
            size: 35.w,
          ),
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.h,
            width: 280.w,
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
