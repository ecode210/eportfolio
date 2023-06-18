import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/game/dash.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';

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
        Breakpoints(
          web: Container(
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
                                width: 50.w,
                                fit: BoxFit.fitWidth,
                                colorFilter: const ColorFilter.mode(
                                  secColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                              10.horizontalSpace,
                              Text(
                                "code",
                                style: Get.textTheme.bodyLarge!.copyWith(fontSize: 25.sp, color: secColor),
                              ),
                            ],
                          ),
                          30.verticalSpace,
                          Text(
                            "Plan, Design, Develop, Deploy, and\nMarket your next project with me.",
                            style: Get.textTheme.titleMedium!.copyWith(fontSize: 14.sp),
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
                            style: Get.textTheme.bodyLarge!.copyWith(fontSize: 25.sp, color: secColor),
                          ),
                          30.verticalSpace,
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.launchURL(
                                      uri: Uri(
                                        scheme: 'mailto',
                                        path: 'olawoleaeo@gmail.com',
                                        query: controller.encodeQueryParameters(<String, String>{
                                          'subject': 'Request For Proposal',
                                        }),
                                      ),
                                    );
                                  },
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
                                  onTap: () {
                                    controller.launchURL(
                                      uri: Uri(
                                        scheme: 'mailto',
                                        path: 'olawoleaeo@gmail.com',
                                        query: controller.encodeQueryParameters(<String, String>{
                                          'subject': 'Request For Proposal',
                                        }),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "olawoleaeo@gmail.com",
                                    style: Get.textTheme.titleMedium,
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
                                  onTap: () {
                                    controller.launchURL(uri: Uri.parse("tel:+2348138313912"));
                                  },
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
                                  onTap: () {
                                    controller.launchURL(uri: Uri.parse("tel:+2348138313912"));
                                  },
                                  child: Text(
                                    "+234 813 831 3912",
                                    style: Get.textTheme.titleMedium,
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
                            style: Get.textTheme.bodyLarge!.copyWith(fontSize: 25.sp, color: secColor),
                          ),
                          30.verticalSpace,
                          Row(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    controller.launchURL(
                                      uri: Uri.parse("https://www.linkedin.com/in/olawole-oyedele-931a14164/"),
                                    );
                                  },
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
                                  onTap: () {
                                    controller.launchURL(
                                      uri: Uri.parse("https://www.linkedin.com/in/olawole-oyedele-931a14164/"),
                                    );
                                  },
                                  child: Text(
                                    "Olawole Oyedele Emmanuel",
                                    style: Get.textTheme.titleMedium,
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
                                  onTap: () {
                                    controller.launchURL(uri: Uri.parse("https://github.com/ecode210"));
                                  },
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
                                  onTap: () {
                                    controller.launchURL(uri: Uri.parse("https://github.com/ecode210"));
                                  },
                                  child: Text(
                                    "@ecode210",
                                    style: Get.textTheme.titleMedium,
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
                                  onTap: () {
                                    controller.launchURL(uri: Uri.parse("https://twitter.com/ecode210"));
                                  },
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
                                  onTap: () {
                                    controller.launchURL(uri: Uri.parse("https://twitter.com/ecode210"));
                                  },
                                  child: Text(
                                    "@ecode210",
                                    style: Get.textTheme.titleMedium,
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
                      "Copyright ©2023 Ecode - All rights reserved | Made with   ",
                      style: Get.textTheme.titleMedium,
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
          mobile: Container(
            height: 1024.h,
            width: 1440.w,
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            "assets/svg/E.svg",
                            width: 100.w,
                            fit: BoxFit.fitWidth,
                            colorFilter: const ColorFilter.mode(
                              secColor,
                              BlendMode.srcIn,
                            ),
                          ),
                          10.horizontalSpace,
                          Text(
                            "code",
                            style: Get.textTheme.bodyLarge!.copyWith(fontSize: 50.sp, color: secColor),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Text(
                        "Plan, Design, Develop, Deploy, and\nMarket your next project with me.",
                        style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                      ),
                      30.verticalSpace,
                      Text(
                        "contact me",
                        style: Get.textTheme.bodyLarge!.copyWith(fontSize: 50.sp, color: secColor),
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(
                                  uri: Uri(
                                    scheme: 'mailto',
                                    path: 'olawoleaeo@gmail.com',
                                    query: controller.encodeQueryParameters(<String, String>{
                                      'subject': 'Request For Proposal',
                                    }),
                                  ),
                                );
                              },
                              child: FaIcon(
                                FontAwesomeIcons.solidEnvelope,
                                color: secColor,
                                size: 40.sp,
                              ),
                            ),
                          ),
                          30.horizontalSpace,
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(
                                  uri: Uri(
                                    scheme: 'mailto',
                                    path: 'olawoleaeo@gmail.com',
                                    query: controller.encodeQueryParameters(<String, String>{
                                      'subject': 'Request For Proposal',
                                    }),
                                  ),
                                );
                              },
                              child: Text(
                                "olawoleaeo@gmail.com",
                                style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(uri: Uri.parse("tel:+2348138313912"));
                              },
                              child: FaIcon(
                                FontAwesomeIcons.phone,
                                color: secColor,
                                size: 40.sp,
                              ),
                            ),
                          ),
                          30.horizontalSpace,
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(uri: Uri.parse("tel:+2348138313912"));
                              },
                              child: Text(
                                "+234 813 831 3912",
                                style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      30.verticalSpace,
                      Text(
                        "socials",
                        style: Get.textTheme.bodyLarge!.copyWith(fontSize: 50.sp, color: secColor),
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(
                                  uri: Uri.parse("https://www.linkedin.com/in/olawole-oyedele-931a14164/"),
                                );
                              },
                              child: SvgPicture.asset(
                                "assets/svg/LinkedIn front.svg",
                                width: 100.w,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          30.horizontalSpace,
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(
                                  uri: Uri.parse("https://www.linkedin.com/in/olawole-oyedele-931a14164/"),
                                );
                              },
                              child: Text(
                                "Olawole Oyedele Emmanuel",
                                style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(uri: Uri.parse("https://github.com/ecode210"));
                              },
                              child: SvgPicture.asset(
                                "assets/svg/Github front.svg",
                                width: 100.w,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          30.horizontalSpace,
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(uri: Uri.parse("https://github.com/ecode210"));
                              },
                              child: Text(
                                "@ecode210",
                                style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(uri: Uri.parse("https://twitter.com/ecode210"));
                              },
                              child: SvgPicture.asset(
                                "assets/svg/Twitter front.svg",
                                width: 100.w,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          30.horizontalSpace,
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                              onTap: () {
                                controller.launchURL(uri: Uri.parse("https://twitter.com/ecode210"));
                              },
                              child: Text(
                                "@ecode210",
                                style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Divider(
                  color: secColor,
                  thickness: 2.h,
                ),
                20.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Copyright ©2023 Ecode - All rights reserved | Made with   ",
                      style: Get.textTheme.titleMedium!.copyWith(fontSize: 40.sp),
                    ),
                    SvgPicture.asset(
                      "assets/svg/Flutter.svg",
                      width: 40.w,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
                50.verticalSpace,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
