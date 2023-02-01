import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.h);
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      toolbarHeight: 60.h,
      title: Container(
        height: 40.h,
        width: 260.w,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: TextFormField(
          decoration: InputDecoration(
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
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 8.w),
          child: Icon(
            Icons.mic,
            size: 35.w,
          ),
        )
      ],
    );
  }
}
