import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

const Color primaryColor = Color(0xff008b8b);
Color black = Colors.black;
Color white = Colors.white;
TextStyle get titleStyle {
  return GoogleFonts.aBeeZee(
      textStyle: TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w700,
    color: black,
  ));
}

TextStyle get bodyStyle {
  return GoogleFonts.aBeeZee(
      textStyle: TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w100,
    color: black,
  ));
}
