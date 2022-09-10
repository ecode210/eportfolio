import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/widgets/responsive_text_field.dart';
import 'package:portfolio_update/view/widgets/stacked_button.dart';

class ContactUs extends GetWidget<PortfolioController> {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024.h,
      width: 1440.w,
      color: priColor,
      padding: EdgeInsets.fromLTRB(100.w, 200.h, 100.w, 50.h),
      child: Column(
        children: [
          Text(
            "let's connect",
            style: Get.textTheme.bodyText1!.copyWith(color: Colors.white),
          ),
          20.verticalSpace,
          Text(
            "Got a question or proposal, or just want to say hello?",
            style: Get.textTheme.subtitle1,
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
                      style: Get.textTheme.subtitle1,
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
                      style: Get.textTheme.subtitle1,
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
              style: Get.textTheme.subtitle1,
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
              style: Get.textTheme.bodyText2!.copyWith(fontSize: 16.sp),
            ),
            isHover: controller.stackConnect,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
