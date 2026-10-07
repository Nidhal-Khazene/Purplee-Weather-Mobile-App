import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {
  static TextStyle extraLight96(BuildContext context) => TextStyle(
    fontSize: 96.sp,
    fontWeight: FontWeight.w200,
    height: 0.73,
    letterSpacing: 0.37,
  );

  // Regular
  static TextStyle regular64(BuildContext context) =>
      TextStyle(fontSize: 64.sp, fontWeight: FontWeight.normal);
  static TextStyle regular34(BuildContext context) =>
      TextStyle(fontSize: 34.sp, fontWeight: FontWeight.normal);
  static TextStyle regular28(BuildContext context) =>
      TextStyle(fontSize: 28.sp, fontWeight: FontWeight.normal);
  static TextStyle regular20(BuildContext context) =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal);
  static TextStyle regular17(BuildContext context) =>
      TextStyle(fontSize: 17.sp, fontWeight: FontWeight.normal);
  static TextStyle regular13(BuildContext context) =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.normal);

  // SemiBold
  static TextStyle semibold13(BuildContext context) =>
      TextStyle(fontSize: 13.sp, fontWeight: FontWeight.w600);
  static TextStyle semibold15(BuildContext context) =>
      TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600);
  static TextStyle semibold20(BuildContext context) =>
      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600);
  static TextStyle semibold18(BuildContext context) =>
      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600);
}
