import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';

class ResponsiveTextField extends StatelessWidget {
  const ResponsiveTextField({Key? key, required this.controller, required this.hint, this.lines}) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final int? lines;

  @override
  Widget build(BuildContext context) {
    return Breakpoints(
      web: MouseRegion(
        onExit: (event) {
          Get.find<PortfolioController>().cursorIsClick.value = false;
        },
        onEnter: (event) {
          Get.find<PortfolioController>().cursorIsClick.value = true;
        },
        child: TextField(
          controller: controller,
          cursorRadius: Radius.circular(20.r),
          cursorColor: secColor,
          style: Get.textTheme.titleSmall,
          maxLines: lines,
          minLines: lines,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: secColor,
                width: 2.h,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: secColor,
                width: 4.h,
              ),
            ),
            hintText: hint,
            hintStyle: Get.textTheme.titleSmall!.copyWith(color: Colors.white),
            filled: false,
          ),
        ),
      ),
      tablet: TextField(
        controller: controller,
        cursorRadius: Radius.circular(20.r),
        cursorColor: secColor,
        style: Get.textTheme.titleSmall!.copyWith(fontSize: 35.sp),
        maxLines: lines,
        minLines: lines,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: secColor,
              width: 2.h,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: secColor,
              width: 4.h,
            ),
          ),
          hintText: hint,
          hintStyle: Get.textTheme.titleSmall!.copyWith(
            color: Colors.white,
            fontSize: 35.sp,
          ),
          filled: false,
        ),
      ),
      mobile: TextField(
        controller: controller,
        cursorRadius: Radius.circular(20.r),
        cursorColor: secColor,
        style: Get.textTheme.titleSmall!.copyWith(fontSize: 40.sp),
        maxLines: lines,
        minLines: lines,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: secColor,
              width: 2.h,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: secColor,
              width: 4.h,
            ),
          ),
          hintText: hint,
          hintStyle: Get.textTheme.titleSmall!.copyWith(
            color: Colors.white,
            fontSize: 40.sp,
          ),
          filled: false,
        ),
      ),
    );
  }
}
