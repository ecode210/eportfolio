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
            padding: EdgeInsets.fromLTRB(100.w, 170.h, 100.w, 50.h),
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 1000),
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
                        "let's chat",
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
                  Obx(() {
                    if (controller.sendEmailStatus.value == 2) {
                      return Text(
                        "thanks, i'll reply asap",
                        style: Get.textTheme.bodyMedium!.copyWith(fontSize: 18.sp),
                      );
                    } else {
                      return TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onHover: (hover) {
                          controller.stackConnect.value = hover;
                        },
                        onPressed: () {
                          if (controller.sendEmailStatus.value == 0) {
                            controller.sendEmail(context);
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 70.h,
                              width: 170.w,
                              decoration: BoxDecoration(
                                color: controller.getBackColor.value,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 200),
                              top: controller.stackConnect.value ? 0 : -3.h,
                              left: controller.stackConnect.value ? 0 : -3.h,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: 70.h,
                                width: 170.w,
                                decoration: BoxDecoration(
                                  color: controller.getFrontColor.value,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                alignment: Alignment.center,
                                child: controller.sendEmailStatus.value == 0
                                    ? Text(
                                        "send",
                                        style: Get.textTheme.bodyMedium!.copyWith(fontSize: 16.sp),
                                      )
                                    : Padding(
                                        padding: EdgeInsets.all(15.w),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 5.w,
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                  20.verticalSpace,
                  StackedButton(
                    height: 70.h,
                    width: 300.w,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_download_rounded,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                        20.horizontalSpace,
                        Text(
                          "download cv",
                          style: Get.textTheme.bodyMedium!.copyWith(fontSize: 16.sp),
                        ),
                      ],
                    ),
                    isHover: controller.stackDownloadCV,
                    onTap: () {
                      controller.launchURL(uri: Uri.parse(cvLink));
                    },
                  ),
                ],
              ),
            ),
          ),
          tablet: Container(
            height: 1024.h,
            width: 1440.w,
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(milliseconds: 1000),
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
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      10.horizontalSpace,
                      Text(
                        "let's chat",
                        style: Get.textTheme.bodyLarge!.copyWith(
                          color: secColor,
                          fontSize: 50.sp,
                        ),
                      ),
                      10.horizontalSpace,
                      Text(
                        ">",
                        style: Get.textTheme.displayMedium!.copyWith(
                          color: secColor,
                          fontSize: 40.sp,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Text(
                    "Got a question or proposal, or just want to say hello?",
                    style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
                  ),
                  100.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Name",
                      style: Get.textTheme.displaySmall!.copyWith(
                        color: secColor,
                        fontSize: 35.sp,
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
                  40.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Email",
                      style: Get.textTheme.displaySmall!.copyWith(
                        color: secColor,
                        fontSize: 35.sp,
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
                  40.verticalSpace,
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 100.w),
                    child: Text(
                      "Your Message",
                      style: Get.textTheme.displaySmall!.copyWith(
                        color: secColor,
                        fontSize: 35.sp,
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
                  Obx(() {
                    if (controller.sendEmailStatus.value == 2) {
                      return Text(
                        "thanks, i'll reply asap",
                        style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                      );
                    } else {
                      return TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onHover: (hover) {
                          controller.stackConnect.value = hover;
                        },
                        onPressed: () {
                          if (controller.sendEmailStatus.value == 0) {
                            controller.stackConnect.value = true;
                            Timer(
                              const Duration(milliseconds: 500),
                              () => controller.stackConnect.value = false,
                            );
                            controller.sendEmail(context);
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 60.h,
                              width: 400.w,
                              decoration: BoxDecoration(
                                color: controller.getBackColor.value,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 200),
                              top: controller.stackConnect.value ? 0 : -3.h,
                              left: controller.stackConnect.value ? 0 : -3.h,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: 60.h,
                                width: 400.w,
                                decoration: BoxDecoration(
                                  color: controller.getFrontColor.value,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                alignment: Alignment.center,
                                child: controller.sendEmailStatus.value == 0
                                    ? Text(
                                        "send",
                                        style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                                      )
                                    : Padding(
                                        padding: EdgeInsets.all(30.w),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 10.w,
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                  30.verticalSpace,
                  StackedButton(
                    height: 60.h,
                    width: 700.w,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_download_rounded,
                          color: Colors.white,
                          size: 50.sp,
                        ),
                        20.horizontalSpace,
                        Text(
                          "download cv",
                          style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                        ),
                      ],
                    ),
                    isHover: controller.stackDownloadCV,
                    onTap: () {
                      controller.stackDownloadCV.value = true;
                      Timer(
                        const Duration(milliseconds: 500),
                        () {
                          controller.stackDownloadCV.value = false;
                          controller.launchURL(uri: Uri.parse(cvLink));
                        },
                      );
                    },
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
                duration: const Duration(milliseconds: 1000),
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
                        "let's chat",
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
                  Obx(() {
                    if (controller.sendEmailStatus.value == 2) {
                      return Text(
                        "thanks, i'll reply asap",
                        style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                      );
                    } else {
                      return TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onHover: (hover) {
                          controller.stackConnect.value = hover;
                        },
                        onPressed: () {
                          if (controller.sendEmailStatus.value == 0) {
                            controller.stackConnect.value = true;
                            Timer(
                              const Duration(milliseconds: 500),
                              () => controller.stackConnect.value = false,
                            );
                            controller.sendEmail(context);
                          }
                        },
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 60.h,
                              width: 500.w,
                              decoration: BoxDecoration(
                                color: controller.getBackColor.value,
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                            ),
                            AnimatedPositioned(
                              duration: const Duration(milliseconds: 200),
                              top: controller.stackConnect.value ? 0 : -3.h,
                              left: controller.stackConnect.value ? 0 : -3.h,
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                height: 60.h,
                                width: 500.w,
                                decoration: BoxDecoration(
                                  color: controller.getFrontColor.value,
                                  borderRadius: BorderRadius.circular(100.r),
                                ),
                                alignment: Alignment.center,
                                child: controller.sendEmailStatus.value == 0
                                    ? Text(
                                        "send",
                                        style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                                      )
                                    : Padding(
                                        padding: EdgeInsets.all(50.w),
                                        child: AspectRatio(
                                          aspectRatio: 1,
                                          child: CircularProgressIndicator(
                                            color: Colors.white,
                                            strokeWidth: 15.w,
                                          ),
                                        ),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  }),
                  30.verticalSpace,
                  StackedButton(
                    height: 60.h,
                    width: 700.w,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.cloud_download_rounded,
                          color: Colors.white,
                          size: 50.sp,
                        ),
                        20.horizontalSpace,
                        Text(
                          "download cv",
                          style: Get.textTheme.bodyMedium!.copyWith(fontSize: 40.sp),
                        ),
                      ],
                    ),
                    isHover: controller.stackDownloadCV,
                    onTap: () {
                      controller.stackDownloadCV.value = true;
                      Timer(
                        const Duration(milliseconds: 500),
                        () {
                          controller.stackDownloadCV.value = false;
                          controller.launchURL(uri: Uri.parse(cvLink));
                        },
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
