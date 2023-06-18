import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';
import 'package:portfolio_update/view/widgets/responsive_text_field.dart';
import 'package:portfolio_update/view/widgets/stacked_button.dart';

class ContactUs extends GetWidget<PortfolioController> {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 1024.h,
          width: 1440.w,
          color: terColor,
          child: Image.asset(
            "assets/png/pattern.png",
            color: secColor.withOpacity(0.07),
            height: 1024.h,
            width: 1440.w,
            fit: BoxFit.cover,
          ),
        ),
        Breakpoints(
          web: Container(
            height: 1024.h,
            width: 1440.w,
            padding: EdgeInsets.fromLTRB(100.w, 200.h, 100.w, 50.h),
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 1500),
                delay: const Duration(milliseconds: 100),
                childAnimationBuilder: (child) => SlideAnimation(
                  verticalOffset: -100.h,
                  curve: Curves.easeOut,
                  child: FadeInAnimation(
                    curve: Curves.easeOut,
                    child: child,
                  ),
                ),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "<",
                        style: Get.textTheme.displayMedium!.copyWith(
                          color: secColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      10.horizontalSpace,
                      Text(
                        "let's connect",
                        style: Get.textTheme.bodyLarge!.copyWith(color: secColor),
                      ),
                      10.horizontalSpace,
                      Text(
                        ">",
                        style: Get.textTheme.displayMedium!.copyWith(
                          color: secColor,
                          fontSize: 30.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  Text(
                    "Got a question or proposal, or just want to say hello?",
                    style: Get.textTheme.titleMedium,
                  ),
                  100.verticalSpace,
                  Row(
                    children: [
                      100.horizontalSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Name",
                              style: Get.textTheme.displaySmall!.copyWith(color: secColor),
                            ),
                            ResponsiveTextField(
                              controller: controller.nameController,
                              hint: "Enter your name",
                            ),
                          ],
                        ),
                      ),
                      50.horizontalSpace,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Your Email",
                              style: Get.textTheme.displaySmall!.copyWith(color: secColor),
                            ),
                            ResponsiveTextField(
                              controller: controller.emailController,
                              hint: "Enter your email address",
                            ),
                          ],
                        ),
                      ),
                      100.horizontalSpace,
                    ],
                  ),
                  70.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Message",
                      style: Get.textTheme.displaySmall!.copyWith(color: secColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.w),
                    child: ResponsiveTextField(
                      controller: controller.messageController,
                      hint: "Hi, I think we need a design system and application for our products at Company XYZ",
                    ),
                  ),
                  100.verticalSpace,
                  StackedButton(
                    height: 70.h,
                    width: 170.w,
                    title: Text(
                      "send",
                      style: Get.textTheme.bodyMedium!.copyWith(fontSize: 16.sp),
                    ),
                    isHover: controller.stackConnect,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          mobile: Container(
            height: 1024.h,
            width: 1440.w,
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 1500),
                delay: const Duration(milliseconds: 100),
                childAnimationBuilder: (child) => SlideAnimation(
                  verticalOffset: -100.h,
                  curve: Curves.easeOut,
                  child: FadeInAnimation(
                    curve: Curves.easeOut,
                    child: child,
                  ),
                ),
                children: [
                  120.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "<",
                        style: Get.textTheme.displayMedium!.copyWith(
                          color: secColor,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      10.horizontalSpace,
                      Text(
                        "let's connect",
                        style: Get.textTheme.bodyLarge!.copyWith(
                          color: secColor,
                          fontSize: 60.sp,
                        ),
                      ),
                      10.horizontalSpace,
                      Text(
                        ">",
                        style: Get.textTheme.displayMedium!.copyWith(
                          color: secColor,
                          fontSize: 50.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                    "Got a question or proposal, or just want to say hello?",
                    style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                  ),
                  100.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Name",
                      style: Get.textTheme.displaySmall!.copyWith(
                        color: secColor,
                        fontSize: 40.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.w),
                    child: ResponsiveTextField(
                      controller: controller.nameController,
                      hint: "Enter your name",
                    ),
                  ),
                  20.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Email",
                      style: Get.textTheme.displaySmall!.copyWith(
                        color: secColor,
                        fontSize: 40.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.w),
                    child: ResponsiveTextField(
                      controller: controller.emailController,
                      hint: "Enter your email address",
                    ),
                  ),
                  20.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Message",
                      style: Get.textTheme.displaySmall!.copyWith(
                        color: secColor,
                        fontSize: 40.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 100.w),
                    child: ResponsiveTextField(
                      controller: controller.messageController,
                      lines: 2,
                      hint: "Hi, I think we need a design system and application for our products at Company XYZ",
                    ),
                  ),
                  100.verticalSpace,
                  StackedButton(
                    height: 70.h,
                    width: 500.w,
                    title: Text(
                      "send",
                      style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                    ),
                    isHover: controller.stackConnect,
                    onTap: () {
                      controller.stackConnect.value = true;
                      Timer(
                        const Duration(milliseconds: 500),
                        () => controller.stackConnect.value = false,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
