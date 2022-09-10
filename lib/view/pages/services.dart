import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';

class Services extends GetWidget<PortfolioController> {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024.h,
      width: 1440.w,
      color: terColor,
      padding: EdgeInsets.fromLTRB(100.w, 200.h, 100.w, 50.h),
      child: Column(
        children: [
          Text(
            "services",
            style: Get.textTheme.bodyText1!.copyWith(color: secColor),
          ),
          250.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 400.h,
                    width: 380.w,
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(
                        color: secColor,
                        width: 2.w,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "app developer",
                          style: Get.textTheme.bodyText2!.copyWith(fontSize: 18.sp, color: secColor),
                        ),
                        20.verticalSpace,
                        Text(
                          "I build mobile, web, and desktop apps that fit seamlessly with your desired project. My focus is on performance, design, responsiveness, and animations.",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -250.h,
                    child: Image.asset(
                      "assets/png/app developer.png",
                      height: 500.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 400.h,
                    width: 380.w,
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(
                        color: secColor,
                        width: 2.w,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "ui/ux design",
                          style: Get.textTheme.bodyText2!.copyWith(fontSize: 18.sp, color: secColor),
                        ),
                        20.verticalSpace,
                        Text(
                          "I design captivating interfaces and create unique experiences for various scale businesses. My talent and passion both lie in design.",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -190.h,
                    child: Image.asset(
                      "assets/png/ui ux design.png",
                      height: 350.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 400.h,
                    width: 380.w,
                    padding: EdgeInsets.all(20.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(
                        color: secColor,
                        width: 2.w,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "api developer",
                          style: Get.textTheme.bodyText2!.copyWith(fontSize: 18.sp, color: secColor),
                        ),
                        20.verticalSpace,
                        Text(
                          "I develop custom REST API endpoints for consumption on any interface. With my technical knowledge, I know what data to obtain to satisfy your goals.",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -210.h,
                    child: Image.asset(
                      "assets/png/api developer.png",
                      height: 420.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
