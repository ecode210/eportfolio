import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/game/dash.dart';

class Footer extends GetWidget<PortfolioController> {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 1024.h,
          width: 1440.w,
          color: priColor,
          child: Image.asset(
            "assets/png/pattern.png",
            color: secColor.withOpacity(0.07),
            height: 1024.h,
            width: 1440.w,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 1024.h,
          width: 1440.w,
          padding: EdgeInsets.fromLTRB(100.w, 180.h, 100.w, 50.h),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/E.svg",
                              color: secColor,
                              width: 50.w,
                              fit: BoxFit.fitWidth,
                            ),
                            10.horizontalSpace,
                            Text(
                              "code",
                              style: Get.textTheme.bodyText1!.copyWith(fontSize: 25.sp, color: secColor),
                            ),
                          ],
                        ),
                        30.verticalSpace,
                        Text(
                          "Plan, Design, Develop, Deploy, and\nMarket your next project with me.",
                          style: Get.textTheme.subtitle1!.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.verticalSpace,
                        Text(
                          "contact me",
                          style: Get.textTheme.bodyText1!.copyWith(fontSize: 25.sp, color: secColor),
                        ),
                        30.verticalSpace,
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: FaIcon(
                                  FontAwesomeIcons.solidEnvelope,
                                  color: secColor,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "olawoleaeo@gmail.com",
                                  style: Get.textTheme.subtitle1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        30.verticalSpace,
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: FaIcon(
                                  FontAwesomeIcons.phone,
                                  color: secColor,
                                  size: 20.sp,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "+234 813 831 3912",
                                  style: Get.textTheme.subtitle1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        30.verticalSpace,
                        Text(
                          "socials",
                          style: Get.textTheme.bodyText1!.copyWith(fontSize: 25.sp, color: secColor),
                        ),
                        30.verticalSpace,
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svg/LinkedIn front.svg",
                                  width: 50.w,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "Olawole Oyedele Emmanuel",
                                  style: Get.textTheme.subtitle1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        30.verticalSpace,
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svg/Github front.svg",
                                  width: 50.w,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "@ecode210",
                                  style: Get.textTheme.subtitle1,
                                ),
                              ),
                            ),
                          ],
                        ),
                        30.verticalSpace,
                        Row(
                          children: [
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  "assets/svg/Twitter front.svg",
                                  width: 50.w,
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                            ),
                            10.horizontalSpace,
                            MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {},
                                child: Text(
                                  "@ecode210",
                                  style: Get.textTheme.subtitle1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  150.horizontalSpace,
                ],
              ),
              const Spacer(),
              const Dash(),
              Divider(
                color: secColor,
                thickness: 2.h,
              ),
              30.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Copyright ©2022 Ecode - All rights reserved | Made with   ",
                    style: Get.textTheme.subtitle1,
                  ),
                  SvgPicture.asset(
                    "assets/svg/Flutter.svg",
                    width: 20.w,
                    fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
