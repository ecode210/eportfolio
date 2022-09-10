import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';

class ResponsiveTextField extends StatelessWidget {
  const ResponsiveTextField({Key? key, required this.controller, required this.hint}) : super(key: key);
  final TextEditingController controller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorRadius: Radius.circular(20.r),
      cursorColor: secColor,
      style: Get.textTheme.subtitle2,
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
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
        hintStyle: Get.textTheme.subtitle2!.copyWith(color: Colors.white.withOpacity(0.5)),
        filled: false,
      ),
    );
  }
}
