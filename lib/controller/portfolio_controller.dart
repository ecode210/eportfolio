import 'dart:math';

import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/view/game/cactus.dart';
import 'package:portfolio_update/view/game/cloud.dart';
import 'package:portfolio_update/view/game/dino.dart';
import 'package:portfolio_update/view/game/game_constants.dart';
import 'package:portfolio_update/view/game/game_object.dart';
import 'package:portfolio_update/view/game/ground.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioController extends GetxController with GetTickerProviderStateMixin {
  // Dashboard
  CoastController coastController = CoastController(initialPage: 0);
  Rx<bool> stackLogo = false.obs;
  Rx<bool> stackContactUs = false.obs;
  var stackHeader = [false, false, false, false].obs;
  Rx<int> page = 0.obs;
  Rx<Color> getFrontColor = priColor.obs;
  Rx<Color> getBackColor = secColor.obs;

  void changeColor(int page) {
    if (page % 2 == 0) {
      getFrontColor.value = priColor;
      getBackColor.value = secColor;
    } else {
      getFrontColor.value = secColor;
      getBackColor.value = Colors.white;
    }
  }

  // Project
  Rx<bool> previous = false.obs;
  Rx<bool> next = false.obs;
  RxInt projectIndex = 0.obs;
  PageController projectImagesController = PageController();
  RxBool isProjectImagesLoop = false.obs;
  RxBool viewImagesInMobileView = false.obs;

  List<Widget> get projectIcons => [
        MouseRegion(
          key: const ValueKey(0),
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              launchURL(uri: Uri.parse("https://www.parivest.com"));
            },
            child: Breakpoints(
              web: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Parivest.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              tablet: Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Parivest.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              mobile: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Parivest.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        MouseRegion(
          key: const ValueKey(1),
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              launchURL(uri: Uri.parse("https://betalifehealth.com"));
            },
            child: Breakpoints(
              web: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/BetaLife.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              tablet: Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/BetaLife.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              mobile: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/BetaLife.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        MouseRegion(
          key: const ValueKey(2),
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              launchURL(uri: Uri.parse("https://heltapp.io"));
            },
            child: Breakpoints(
              web: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Helt.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              tablet: Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Helt.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              mobile: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Helt.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        MouseRegion(
          key: const ValueKey(3),
          cursor: SystemMouseCursors.basic,
          child: GestureDetector(
            onTap: () {},
            child: Breakpoints(
              web: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Resup.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              tablet: Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Resup.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              mobile: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Resup.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
        MouseRegion(
          key: const ValueKey(4),
          cursor: SystemMouseCursors.basic,
          child: GestureDetector(
            onTap: () {},
            child: Breakpoints(
              web: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Dilivar.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              tablet: Container(
                height: 60.h,
                width: 60.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Dilivar.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              mobile: Container(
                height: 50.h,
                width: 50.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: SvgPicture.asset(
                    "assets/svg/Dilivar.svg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ];

  List<Widget> get projectBadges => [
        Breakpoints(
          key: const ValueKey(0),
          web: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri: Uri.parse("https://play.google.com/store/apps/details?id=com.parivest.app&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 70.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              20.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(uri: Uri.parse("https://apps.apple.com/us/app/parivest/id1604783661"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/AppStore badge.svg",
                    height: 70.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri: Uri.parse("https://play.google.com/store/apps/details?id=com.parivest.app&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 40.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              20.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(uri: Uri.parse("https://apps.apple.com/us/app/parivest/id1604783661"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/AppStore badge.svg",
                    height: 40.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri: Uri.parse("https://play.google.com/store/apps/details?id=com.parivest.app&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 25.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              20.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(uri: Uri.parse("https://apps.apple.com/us/app/parivest/id1604783661"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/AppStore badge.svg",
                    height: 25.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
        Breakpoints(
          key: const ValueKey(1),
          web: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri:
                            Uri.parse("https://play.google.com/store/apps/details?id=com.blt.better_life&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 70.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              20.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(uri: Uri.parse("https://apps.apple.com/us/app/betalife/id1641272726"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/AppStore badge.svg",
                    height: 70.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri:
                            Uri.parse("https://play.google.com/store/apps/details?id=com.blt.better_life&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 40.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              20.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(uri: Uri.parse("https://apps.apple.com/us/app/betalife/id1641272726"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/AppStore badge.svg",
                    height: 40.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri:
                            Uri.parse("https://play.google.com/store/apps/details?id=com.blt.better_life&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 25.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              20.horizontalSpace,
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(uri: Uri.parse("https://apps.apple.com/us/app/betalife/id1641272726"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/AppStore badge.svg",
                    height: 25.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
        Breakpoints(
          key: const ValueKey(2),
          web: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri: Uri.parse("https://play.google.com/store/apps/details?id=com.helt.helt&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 70.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri: Uri.parse("https://play.google.com/store/apps/details?id=com.helt.helt&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 40.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    launchURL(
                        uri: Uri.parse("https://play.google.com/store/apps/details?id=com.helt.helt&hl=en&gl=US"));
                  },
                  child: SvgPicture.asset(
                    "assets/svg/PlayStore badge.svg",
                    height: 25.h,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ],
          ),
        ),
        Breakpoints(
          key: const ValueKey(3),
          web: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/PlayStore badge.svg",
                      height: 70.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 70.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              20.horizontalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/AppStore badge.svg",
                      height: 70.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 70.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/PlayStore badge.svg",
                      height: 40.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              20.horizontalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/AppStore badge.svg",
                      height: 40.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/PlayStore badge.svg",
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 25.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              20.horizontalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/AppStore badge.svg",
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 25.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Breakpoints(
          key: const ValueKey(4),
          web: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/PlayStore badge.svg",
                      height: 70.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 70.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              20.horizontalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/AppStore badge.svg",
                      height: 70.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 70.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          tablet: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/PlayStore badge.svg",
                      height: 40.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              20.horizontalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/AppStore badge.svg",
                      height: 40.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 40.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          mobile: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/PlayStore badge.svg",
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 25.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              20.horizontalSpace,
              Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: SvgPicture.asset(
                      "assets/svg/AppStore badge.svg",
                      height: 25.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Container(
                    height: 25.h,
                    alignment: Alignment.center,
                    child: Text(
                      "COMING SOON",
                      style: Get.textTheme.titleMedium!.copyWith(
                        fontSize: 25.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Breakpoints(
        //   key: const ValueKey(2),
        //   web: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       SvgPicture.asset(
        //         "assets/svg/Website badge.svg",
        //         height: 70.h,
        //         fit: BoxFit.fitHeight,
        //       ),
        //     ],
        //   ),
        //   tablet: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       SvgPicture.asset(
        //         "assets/svg/Website badge.svg",
        //         height: 40.h,
        //         fit: BoxFit.fitHeight,
        //       ),
        //     ],
        //   ),
        //   mobile: Row(
        //     mainAxisAlignment: MainAxisAlignment.end,
        //     children: [
        //       SvgPicture.asset(
        //         "assets/svg/Website badge.svg",
        //         height: 25.h,
        //         fit: BoxFit.fitHeight,
        //       ),
        //     ],
        //   ),
        // ),
      ];
  List<String> projectTitles = ["parivest", "betalife", "helt", "resup", "dilivar"];
  List<List<Widget>> projectImages = [
    [
      Image.asset(
        "assets/png/Parivest-01.png",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Betalife-01.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Helt-01.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Resup-01.jpeg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Dilivar-01.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    ],
    [
      Image.asset(
        "assets/png/Parivest-03.png",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Betalife-02.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.bottomCenter,
      ),
      Image.asset(
        "assets/jpg/Helt-02.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Resup-02.jpeg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Dilivar-02.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    ],
    [
      Image.asset(
        "assets/png/Parivest-05.png",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Betalife-03.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Helt-03.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Resup-03.jpeg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Dilivar-03.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
    [
      Image.asset(
        "assets/png/Parivest-06.png",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Betalife-04.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt-04.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Resup-04.jpeg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Dilivar-04.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
    [
      Image.asset(
        "assets/png/Parivest-09.png",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Betalife-05.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Helt-05.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Resup-05.jpeg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
      Image.asset(
        "assets/jpg/Dilivar-05.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
      ),
    ],
  ];
  List<Widget> projectDescriptions = [
    SizedBox(
      key: const ValueKey(0),
      child: Breakpoints(
        web: Text(
          "PariVest is a mobile app offering hassle-free real estate investment in the UK and Nigeria. With a minimum investment of N5,000, users can invest in UK real estate starting from £10 and earn fixed returns in pounds. Choose from three, six, twelve, or twenty-four-month tenors, make payments from your wallet, and watch your money grow. The app also allows investment in Nigerian fixed-income products with flexible tenors. PariVest protects investments from inflation and currency devaluation while providing a choice between pound or naira returns. With a secure and diversified asset mix, professionally managed properties, and easy accessibility, PariVest simplifies real estate investing.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Collaborated with the backend development team to optimize REST API calls, ensuring efficient data retrieval and transmission, and improving overall app performance.\n📍 Implemented the Facebook SDK - App Events to provide the marketing team with valuable insights into user engagement and app usage.\n📍 Conducted extensive testing to identify and eliminate UI flaws, and conducted regular A/B testing to optimize app features and improve user engagement.\n📍 Documented technical specifications, code changes, and UI enhancements to facilitate knowledge sharing, collaboration, and future app updates.",
          style: Get.textTheme.titleMedium,
        ),
        tablet: Text(
          "PariVest is a mobile app offering hassle-free real estate investment in the UK and Nigeria. With a minimum investment of N5,000, users can invest in UK real estate starting from £10 and earn fixed returns in pounds. Choose from three, six, twelve, or twenty-four-month tenors, make payments from your wallet, and watch your money grow. The app also allows investment in Nigerian fixed-income products with flexible tenors. PariVest protects investments from inflation and currency devaluation while providing a choice between pound or naira returns. With a secure and diversified asset mix, professionally managed properties, and easy accessibility, PariVest simplifies real estate investing.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Collaborated with the backend development team to optimize REST API calls, ensuring efficient data retrieval and transmission, and improving overall app performance.\n📍 Implemented the Facebook SDK - App Events to provide the marketing team with valuable insights into user engagement and app usage.\n📍 Conducted extensive testing to identify and eliminate UI flaws, and conducted regular A/B testing to optimize app features and improve user engagement.\n📍 Documented technical specifications, code changes, and UI enhancements to facilitate knowledge sharing, collaboration, and future app updates.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
        ),
        mobile: Text(
          "PariVest is a mobile app offering hassle-free real estate investment in the UK and Nigeria. With a minimum investment of N5,000, users can invest in UK real estate starting from £10 and earn fixed returns in pounds. Choose from three, six, twelve, or twenty-four-month tenors, make payments from your wallet, and watch your money grow. The app also allows investment in Nigerian fixed-income products with flexible tenors. PariVest protects investments from inflation and currency devaluation while providing a choice between pound or naira returns. With a secure and diversified asset mix, professionally managed properties, and easy accessibility, PariVest simplifies real estate investing.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Collaborated with the backend development team to optimize REST API calls, ensuring efficient data retrieval and transmission, and improving overall app performance.\n📍 Implemented the Facebook SDK - App Events to provide the marketing team with valuable insights into user engagement and app usage.\n📍 Conducted extensive testing to identify and eliminate UI flaws, and conducted regular A/B testing to optimize app features and improve user engagement.\n📍 Documented technical specifications, code changes, and UI enhancements to facilitate knowledge sharing, collaboration, and future app updates.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 45.sp),
        ),
      ),
    ),
    SizedBox(
      key: const ValueKey(1),
      child: Breakpoints(
        web: Text(
          "BetaLife is a health-tech mobile app that aims to improve life expectancy and healthcare processes in Africa. The app simplifies blood donation, allowing users to sign up, book appointments, and receive test results. Donors are rewarded for their contributions. Patients can share blood request cases and quickly connect with compatible donors. BetaLife's mission is to provide convenient access to quality healthcare, saving time and costs. By promoting healthier lifestyles and enhancing patient safety, the app strives to make a positive impact on African communities.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Designed, Implemented, and Tested Flutter & Dart code using the MVC architecture and GetX state management for Android & iOS.\n📍 Facilitated discussions with the development team to determine the expectations of the consumer and translated the Figma UI into code.\n📍 Worked with Version Control System (Github) and CI/CD (Codemagic) to organize app releases and channels.\n📍 Conducted performance optimization techniques, including app size reduction, network optimization, and memory management, to ensure efficient app operation.",
          style: Get.textTheme.titleMedium,
        ),
        tablet: Text(
          "BetaLife is a health-tech mobile app that aims to improve life expectancy and healthcare processes in Africa. The app simplifies blood donation, allowing users to sign up, book appointments, and receive test results. Donors are rewarded for their contributions. Patients can share blood request cases and quickly connect with compatible donors. BetaLife's mission is to provide convenient access to quality healthcare, saving time and costs. By promoting healthier lifestyles and enhancing patient safety, the app strives to make a positive impact on African communities.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Designed, Implemented, and Tested Flutter & Dart code using the MVC architecture and GetX state management for Android & iOS.\n📍 Facilitated discussions with the development team to determine the expectations of the consumer and translated the Figma UI into code.\n📍 Worked with Version Control System (Github) and CI/CD (Codemagic) to organize app releases and channels.\n📍 Conducted performance optimization techniques, including app size reduction, network optimization, and memory management, to ensure efficient app operation.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
        ),
        mobile: Text(
          "BetaLife is a health-tech mobile app that aims to improve life expectancy and healthcare processes in Africa. The app simplifies blood donation, allowing users to sign up, book appointments, and receive test results. Donors are rewarded for their contributions. Patients can share blood request cases and quickly connect with compatible donors. BetaLife's mission is to provide convenient access to quality healthcare, saving time and costs. By promoting healthier lifestyles and enhancing patient safety, the app strives to make a positive impact on African communities.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Designed, Implemented, and Tested Flutter & Dart code using the MVC architecture and GetX state management for Android & iOS.\n📍 Facilitated discussions with the development team to determine the expectations of the consumer and translated the Figma UI into code.\n📍 Worked with Version Control System (Github) and CI/CD (Codemagic) to organize app releases and channels.\n📍 Conducted performance optimization techniques, including app size reduction, network optimization, and memory management, to ensure efficient app operation.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 45.sp),
        ),
      ),
    ),
    SizedBox(
      key: const ValueKey(2),
      child: Breakpoints(
        web: Text(
          "Helt is a health-tech mobile app that revolutionizes the way you access primary healthcare and wellness services. With a user-friendly interface, Helt offers seamless navigation and a comprehensive range of healthcare solutions at your fingertips. Through metered subscription plans, you can enjoy cost-effective access to pharmacies, hospitals, and wellness vendors, empowering you to prioritize your health with ease. The app goes beyond traditional services, providing an array of resources and tools designed to support your journey toward a healthier lifestyle.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Responsible for Designing (Figma), Developing, Testing, and Publishing 3 Flutter apps: Helt(Android), Helt Vendor(Web), and Helt Admin(Android).\n📍 Developed secure REST APIs utilizing Golang and Firebase services SDKs such as Cloud Firestore, Storage, and Messaging to enhance app functionality and data management.\n📍 Implemented serverless functions using Golang and AWS Lambda functions, including cron jobs, to automate tasks and improve the app's efficiency and scalability.\n📍 Enhanced the application's monolithic back-end to handle more subscriptions with low latency and minimal delivery error rate.",
          style: Get.textTheme.titleMedium,
        ),
        tablet: Text(
          "Helt is a health-tech mobile app that revolutionizes the way you access primary healthcare and wellness services. With a user-friendly interface, Helt offers seamless navigation and a comprehensive range of healthcare solutions at your fingertips. Through metered subscription plans, you can enjoy cost-effective access to pharmacies, hospitals, and wellness vendors, empowering you to prioritize your health with ease. The app goes beyond traditional services, providing an array of resources and tools designed to support your journey toward a healthier lifestyle.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Responsible for Designing (Figma), Developing, Testing, and Publishing 3 Flutter apps: Helt(Android), Helt Vendor(Web), and Helt Admin(Android).\n📍 Developed secure REST APIs utilizing Golang and Firebase services SDKs such as Cloud Firestore, Storage, and Messaging to enhance app functionality and data management.\n📍 Implemented serverless functions using Golang and AWS Lambda functions, including cron jobs, to automate tasks and improve the app's efficiency and scalability.\n📍 Enhanced the application's monolithic back-end to handle more subscriptions with low latency and minimal delivery error rate.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
        ),
        mobile: Text(
          "Helt is a health-tech mobile app that revolutionizes the way you access primary healthcare and wellness services. With a user-friendly interface, Helt offers seamless navigation and a comprehensive range of healthcare solutions at your fingertips. Through metered subscription plans, you can enjoy cost-effective access to pharmacies, hospitals, and wellness vendors, empowering you to prioritize your health with ease. The app goes beyond traditional services, providing an array of resources and tools designed to support your journey toward a healthier lifestyle.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Responsible for Designing (Figma), Developing, Testing, and Publishing 3 Flutter apps: Helt(Android), Helt Vendor(Web), and Helt Admin(Android).\n📍 Developed secure REST APIs utilizing Golang and Firebase services SDKs such as Cloud Firestore, Storage, and Messaging to enhance app functionality and data management.\n📍 Implemented serverless functions using Golang and AWS Lambda functions, including cron jobs, to automate tasks and improve the app's efficiency and scalability.\n📍 Enhanced the application's monolithic back-end to handle more subscriptions with low latency and minimal delivery error rate.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 45.sp),
        ),
      ),
    ),
    SizedBox(
      key: const ValueKey(3),
      child: Breakpoints(
        web: Text(
          "Resup is a dynamic B2B e-commerce app connecting businesses with suppliers, offering a comprehensive range of functionalities including an extensive product catalog, streamlined ordering process, personalized user accounts, real-time inventory updates, secure payment options, and reliable order tracking, ensuring a seamless wholesale purchasing experience for businesses. Currently, in the final stages of internal testing, the app is on the brink of release, promising to provide businesses with a seamless and reliable solution for their wholesale purchasing needs.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Structured, Developed, and Managed the backend system for an e-commerce app using Golang and Gin framework creating JWT secure REST APIs.\n📍 Developed and Tested 2 Flutter apps, both User & Admin, using the MVC architecture and GetX state management for Android & iOS.\n📍 Implemented caching to reduce the frequency of database querying, increasing efficiency. Using aggregator functions and indexing foreign keys, query times to the database were reduced.\n📍 Modeling of JSON data retrieved from REST API endpoints, allowing for the cohesive frontend to backend integration.",
          style: Get.textTheme.titleMedium,
        ),
        tablet: Text(
          "Resup is a dynamic B2B e-commerce app connecting businesses with suppliers, offering a comprehensive range of functionalities including an extensive product catalog, streamlined ordering process, personalized user accounts, real-time inventory updates, secure payment options, and reliable order tracking, ensuring a seamless wholesale purchasing experience for businesses. Currently, in the final stages of internal testing, the app is on the brink of release, promising to provide businesses with a seamless and reliable solution for their wholesale purchasing needs.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Structured, Developed, and Managed the backend system for an e-commerce app using Golang and Gin framework creating JWT secure REST APIs.\n📍 Developed and Tested 2 Flutter apps, both User & Admin, using the MVC architecture and GetX state management for Android & iOS.\n📍 Implemented caching to reduce the frequency of database querying, increasing efficiency. Using aggregator functions and indexing foreign keys, query times to the database were reduced.\n📍 Modeling of JSON data retrieved from REST API endpoints, allowing for the cohesive frontend to backend integration.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
        ),
        mobile: Text(
          "Resup is a dynamic B2B e-commerce app connecting businesses with suppliers, offering a comprehensive range of functionalities including an extensive product catalog, streamlined ordering process, personalized user accounts, real-time inventory updates, secure payment options, and reliable order tracking, ensuring a seamless wholesale purchasing experience for businesses. Currently, in the final stages of internal testing, the app is on the brink of release, promising to provide businesses with a seamless and reliable solution for their wholesale purchasing needs.\n\nMy responsibilities in this role include, but are not limited to;\n📍 Structured, Developed, and Managed the backend system for an e-commerce app using Golang and Gin framework creating JWT secure REST APIs.\n📍 Developed and Tested 2 Flutter apps, both User & Admin, using the MVC architecture and GetX state management for Android & iOS.\n📍 Implemented caching to reduce the frequency of database querying, increasing efficiency. Using aggregator functions and indexing foreign keys, query times to the database were reduced.\n📍 Modeling of JSON data retrieved from REST API endpoints, allowing for the cohesive frontend to backend integration.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 45.sp),
        ),
      ),
    ),
    SizedBox(
      key: const ValueKey(4),
      child: Breakpoints(
        web: Text(
          "Dilivar is a comprehensive logistics app that empowers users to seamlessly request package pickups and deliveries within the same state or through courier services. With a range of transportation options including cars, bikes, vans, and bicycles, Dilivar ensures efficient and reliable transportation. Users can also rely on Dilivar to facilitate the movement of large-scale items during home or office relocations. Throughout the entire process, all relevant parties can track the movement of packages in real time, providing transparency and peace of mind. Simplify your logistics needs with Dilivar and experience hassle-free package transportation and delivery. Stay tuned for the official launch of Dilivar!\n\nMy responsibilities in this role include, but are not limited to;\n📍Developed and implemented complex app features such as real-time location tracking, route optimization, and QR scanning, resulting in a more efficient and streamlined logistics process.\n📍 Developed and Tested 2 Flutter apps, both User & Rider, with all core features using the MVC architecture and GetX state management for Android & iOS.\n📍 Collaborated with team members such as backend developer, UI/UX designer, and QA tester to prioritize and deliver new features in a timely manner.\n📍 Developed and maintained detailed documentation, including technical specifications and user manuals, to ensure seamless app deployment and user adoption.",
          style: Get.textTheme.titleMedium,
        ),
        tablet: Text(
          "Dilivar is a comprehensive logistics app that empowers users to seamlessly request package pickups and deliveries within the same state or through courier services. With a range of transportation options including cars, bikes, vans, and bicycles, Dilivar ensures efficient and reliable transportation. Users can also rely on Dilivar to facilitate the movement of large-scale items during home or office relocations. Throughout the entire process, all relevant parties can track the movement of packages in real time, providing transparency and peace of mind. Simplify your logistics needs with Dilivar and experience hassle-free package transportation and delivery. Stay tuned for the official launch of Dilivar!\n\nMy responsibilities in this role include, but are not limited to;\n📍Developed and implemented complex app features such as real-time location tracking, route optimization, and QR scanning, resulting in a more efficient and streamlined logistics process.\n📍 Developed and Tested 2 Flutter apps, both User & Rider, with all core features using the MVC architecture and GetX state management for Android & iOS.\n📍 Collaborated with team members such as backend developer, UI/UX designer, and QA tester to prioritize and deliver new features in a timely manner.\n📍 Developed and maintained detailed documentation, including technical specifications and user manuals, to ensure seamless app deployment and user adoption.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
        ),
        mobile: Text(
          "Dilivar is a comprehensive logistics app that empowers users to seamlessly request package pickups and deliveries within the same state or through courier services. With a range of transportation options including cars, bikes, vans, and bicycles, Dilivar ensures efficient and reliable transportation. Users can also rely on Dilivar to facilitate the movement of large-scale items during home or office relocations. Throughout the entire process, all relevant parties can track the movement of packages in real time, providing transparency and peace of mind. Simplify your logistics needs with Dilivar and experience hassle-free package transportation and delivery. Stay tuned for the official launch of Dilivar!\n\nMy responsibilities in this role include, but are not limited to;\n📍Developed and implemented complex app features such as real-time location tracking, route optimization, and QR scanning, resulting in a more efficient and streamlined logistics process.\n📍 Developed and Tested 2 Flutter apps, both User & Rider, with all core features using the MVC architecture and GetX state management for Android & iOS.\n📍 Collaborated with team members such as backend developer, UI/UX designer, and QA tester to prioritize and deliver new features in a timely manner.\n📍 Developed and maintained detailed documentation, including technical specifications and user manuals, to ensure seamless app deployment and user adoption.",
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 45.sp),
        ),
      ),
    ),
  ];

  void projectSlideshow(int value) {
    if (value == 3) {
      isProjectImagesLoop.value = true;
      Future.doWhile(() async {
        if (!isProjectImagesLoop.value) {
          return false;
        }
        await Future.delayed(const Duration(seconds: 5));
        if (!isProjectImagesLoop.value) {
          return false;
        }
        if (viewImagesInMobileView.value) {
          return false;
        }

        if (projectImagesController.page! >= 4) {
          projectImagesController.animateToPage(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        } else {
          projectImagesController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }

        return isProjectImagesLoop.value;
      });
    } else {
      isProjectImagesLoop.value = false;
    }
  }

  // Contact Us
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  Rx<bool> stackConnect = false.obs;

  // Footer
  Rx<Dino> dino = Dino().obs;
  Rx<double> runVelocity = initialVelocity.obs;
  Rx<double> runDistance = 0.0.obs;
  Rx<int> highScore = 0.obs;
  late AnimationController worldController;
  Rx<Duration> lastUpdateCall = const Duration().obs;
  RxList gameChildren = [].obs;
  RxList<Cactus> cacti = [Cactus(worldLocation: Offset(200.w, 0))].obs;
  RxList<Cactus> cacti2 = [Cactus(worldLocation: Offset(1000.w, 0))].obs;
  RxList<Ground> ground = [
    Ground(worldLocation: const Offset(0, 0)),
    Ground(worldLocation: Offset(groundSprite.imageWidth / 10, 0)),
  ].obs;
  RxList<Cloud> clouds = [
    Cloud(worldLocation: Offset(100.w, 20.h)),
    Cloud(worldLocation: Offset(300.w, 10.h)),
    Cloud(worldLocation: Offset(450.w, -10.h)),
    Cloud(worldLocation: Offset(600.w, 30.h)),
  ].obs;

  void newGame() {
    dino.value.dispY = 0;
    runVelocity.value = initialVelocity;
    // setState
    worldController.reset();
    cacti.value = [Cactus(worldLocation: Offset(200.w, 0))];
    cacti2.value = [Cactus(worldLocation: Offset(1000.w, 0))];

    ground.value = [
      Ground(worldLocation: const Offset(0, 0)),
      Ground(worldLocation: Offset(groundSprite.imageWidth / 10, 0))
    ];

    clouds.value = [
      Cloud(worldLocation: Offset(100.w, 20.h)),
      Cloud(worldLocation: Offset(300.w, 10.h)),
      Cloud(worldLocation: Offset(450.w, -10.h)),
      Cloud(worldLocation: Offset(600.w, 30.h)),
    ];
    highScore.value = max(highScore.value, runDistance.value.toInt());
    GetStorage("ecode").write("high score", highScore.value);
    runDistance.value = 0;
    runVelocity.value = initialVelocity;
    dino.value.state = DinoState.running;
    addGameObject();
    worldController.forward();
  }

  void gameOver() {
    if (runDistance.value != 0) {
      highScore.value = max(highScore.value, runDistance.value.toInt());
      GetStorage("ecode").write("high score", highScore.value);
    }
    worldController.stop();
    dino.value.die();
  }

  updateGame() {
    try {
      double elapsedTimeSeconds;
      dino.value.update(lastUpdateCall.value, worldController.lastElapsedDuration);
      try {
        elapsedTimeSeconds = (worldController.lastElapsedDuration! - lastUpdateCall.value).inMilliseconds / 1000;
      } catch (_) {
        elapsedTimeSeconds = 0;
      }

      runDistance.value += runVelocity.value * elapsedTimeSeconds;
      if (runDistance.value < 0) runDistance.value = 0;
      runVelocity.value += acceleration * elapsedTimeSeconds;

      Rect dinoRect = dino.value.getRect(Get.size, runDistance.value);
      for (Cactus cactus in cacti) {
        Rect obstacleRect = cactus.getRect(Get.size, runDistance.value);
        if (dinoRect.overlaps(obstacleRect.deflate(20))) {
          gameOver();
        }

        if (obstacleRect.right < 0) {
          // setState(() {
          cacti.remove(cactus);
          cacti.add(Cactus(worldLocation: Offset(runDistance.value + 150.w + Random().nextInt(100).w, 0)));
          addGameObject();
          // });
        }
      }

      for (Cactus cactus in cacti2) {
        Rect obstacleRect = cactus.getRect(Get.size, runDistance.value);
        if (dinoRect.overlaps(obstacleRect.deflate(20))) {
          gameOver();
        }

        if (obstacleRect.right < 0) {
          // setState(() {
          cacti2.remove(cactus);
          cacti2.add(Cactus(worldLocation: Offset(runDistance.value + 300.w + Random().nextInt(100).w, 0)));
          addGameObject();
          // });
        }
      }

      for (Ground groundlet in ground) {
        if (groundlet.getRect(Get.size, runDistance.value).right < 0) {
          // setState(() {
          ground.remove(groundlet);
          ground.add(
            Ground(
              worldLocation: Offset(
                ground.last.worldLocation.dx + groundSprite.imageWidth / 10,
                0,
              ),
            ),
          );
          addGameObject();
          // });
        }
      }

      for (Cloud cloud in clouds) {
        if (cloud.getRect(Get.size, runDistance.value).right < 0) {
          // setState(() {
          clouds.remove(cloud);
          clouds.add(
            Cloud(
              worldLocation: Offset(
                clouds.last.worldLocation.dx + Random().nextInt(50).w + 300.w,
                Random().nextInt(40).h - 20.h,
              ),
            ),
          );
          addGameObject();
          // });
        }
      }

      lastUpdateCall.value = worldController.lastElapsedDuration!;
    } catch (e) {
      //
    }
  }

  void addGameObject() {
    gameChildren.clear();
    for (GameObject object in [...clouds, ...ground, ...cacti, ...cacti2, dino.value]) {
      gameChildren.add(
        AnimatedBuilder(
          animation: worldController,
          builder: (context, _) {
            Rect objectRect = object.getRect(Get.size, runDistance.value);
            return Positioned(
              left: objectRect.left,
              top: objectRect.top,
              width: objectRect.width,
              height: objectRect.height,
              child: object.render(),
            );
          },
        ),
      );
    }
  }

  void jump() async {
    if (dino.value.state != DinoState.dead) {
      dino.value.jump();
    }
    if (dino.value.state == DinoState.dead) {
      await Future.delayed(const Duration(milliseconds: 500));
      newGame();
    }
  }

  Future<void> launchURL({required Uri uri}) async {
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $uri');
    }
  }

  String encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  @override
  void onInit() {
    if (GetStorage("ecode").read("high score") != null) {
      highScore.value = GetStorage("ecode").read("high score");
    } else {
      GetStorage("ecode").write("high score", 0);
    }
    worldController = AnimationController(vsync: this, duration: const Duration(days: 1));
    worldController.addListener(updateGame);
    gameOver();
    super.onInit();
  }

  @override
  void dispose() {
    coastController.dispose();
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
