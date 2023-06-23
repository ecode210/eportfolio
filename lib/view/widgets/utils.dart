import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';

class Utils {
  static void snackBar(BuildContext context, {required String message}) {
    if (MediaQuery.of(context).size.width <= 450) {
      Get.snackbar(
        "",
        "",
        titleText: Text(
          "Error",
          style: Get.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 50.sp,
          ),
        ),
        messageText: Text(
          message,
          style: Get.textTheme.displaySmall!.copyWith(
            color: Colors.white,
            fontSize: 40.sp,
          ),
        ),
        colorText: Colors.white,
        icon: Icon(
          Icons.warning_rounded,
          color: priColor,
          size: 150.sp,
        ),
        maxWidth: 1200.w,
        shouldIconPulse: true,
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.symmetric(vertical: 50.h),
        padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.h),
      );
    } else if (MediaQuery.of(context).size.width <= 990) {
      Get.snackbar(
        "",
        "",
        titleText: Text(
          "Error",
          style: Get.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 40.sp,
          ),
        ),
        messageText: Text(
          message,
          style: Get.textTheme.displaySmall!.copyWith(
            color: Colors.white,
            fontSize: 30.sp,
          ),
        ),
        colorText: Colors.white,
        icon: Icon(
          Icons.warning_rounded,
          color: priColor,
          size: 110.sp,
        ),
        maxWidth: 1200.w,
        shouldIconPulse: true,
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.symmetric(vertical: 50.h),
        padding: EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.h),
      );
    } else {
      Get.snackbar(
        "",
        "",
        titleText: Text(
          "Error",
          style: Get.textTheme.bodyLarge!.copyWith(
            color: Colors.white,
            fontSize: 20.sp,
          ),
        ),
        messageText: Text(
          message,
          style: Get.textTheme.displaySmall!.copyWith(
            color: Colors.white,
          ),
        ),
        colorText: Colors.white,
        icon: Icon(
          Icons.warning_rounded,
          color: priColor,
          size: 50.sp,
        ),
        maxWidth: 1000.w,
        shouldIconPulse: true,
        duration: const Duration(seconds: 3),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.symmetric(vertical: 50.h),
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
      );
    }
  }
}
