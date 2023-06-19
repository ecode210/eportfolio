import 'dart:async';

import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/pages/about.dart';
import 'package:portfolio_update/view/pages/contact_us.dart';
import 'package:portfolio_update/view/pages/footer.dart';
import 'package:portfolio_update/view/pages/home.dart';
import 'package:portfolio_update/view/pages/projects.dart';
import 'package:portfolio_update/view/pages/services.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';
import 'package:portfolio_update/view/widgets/mobile_drawer.dart';
import 'package:portfolio_update/view/widgets/section_button.dart';
import 'package:portfolio_update/view/widgets/stacked_button.dart';

class Dashboard extends GetWidget<PortfolioController> {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Timer(
    //   const Duration(milliseconds: 100),
    //   () {
    //     controller.coastController.animateTo(
    //       beach: 5,
    //       duration: const Duration(seconds: 2),
    //     );
    //   },
    // );
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (controller.page.value == 5 && event is RawKeyDownEvent) {
          if (event.isKeyPressed(LogicalKeyboardKey.space) ||
              event.isKeyPressed(LogicalKeyboardKey.keyW) ||
              event.isKeyPressed(LogicalKeyboardKey.arrowUp)) {
            controller.jump();
          }
        }
      },
      child: Scaffold(
        backgroundColor: terColor,
        body: SizedBox(
          height: 1024.h,
          width: 1440.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Coast(
                controller: controller.coastController,
                scrollDirection: Axis.vertical,
                physics: const AlwaysScrollableScrollPhysics(),
                onPageChanged: (value) {
                  controller.changeColor(value);
                  controller.page.value = value;
                  controller.projectSlideshow(value);
                },
                beaches: [
                  Beach(builder: (context) => const Home()),
                  Beach(builder: (context) => const About()),
                  Beach(builder: (context) => const Services()),
                  Beach(builder: (context) => const Projects()),
                  Beach(builder: (context) => const ContactUs()),
                  Beach(builder: (context) => const Footer()),
                ],
                observers: [
                  CrabController(),
                ],
              ),
              Breakpoints(
                web: Container(
                  height: 124.h,
                  width: 1440.w,
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Row(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onHover: (hover) {
                          controller.stackLogo.value = hover;
                        },
                        onPressed: () {
                          controller.coastController.animateTo(
                            beach: 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Obx(
                          () {
                            return AnimatedCrossFade(
                              duration: const Duration(milliseconds: 200),
                              crossFadeState:
                                  controller.page % 2 == 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                              firstChild: Stack(
                                clipBehavior: Clip.none,
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
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    top: controller.stackLogo.value ? 0 : -3.h,
                                    left: controller.stackLogo.value ? 0 : -3.h,
                                    child: SvgPicture.asset(
                                      "assets/svg/E.svg",
                                      width: 50.w,
                                      fit: BoxFit.fitWidth,
                                      colorFilter: const ColorFilter.mode(
                                        priColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              secondChild: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/E.svg",
                                    width: 50.w,
                                    fit: BoxFit.fitWidth,
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    top: controller.stackLogo.value ? 0 : -3.h,
                                    left: controller.stackLogo.value ? 0 : -3.h,
                                    child: SvgPicture.asset(
                                      "assets/svg/E.svg",
                                      width: 50.w,
                                      fit: BoxFit.fitWidth,
                                      colorFilter: const ColorFilter.mode(
                                        secColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const Spacer(),
                      const SectionButton(title: "about", index: 0),
                      SizedBox(width: 50.w),
                      const SectionButton(title: "services", index: 1),
                      SizedBox(width: 50.w),
                      const SectionButton(title: "projects", index: 2),
                      SizedBox(width: 50.w),
                      StackedButton(
                        height: 50.h,
                        width: 170.w,
                        title: Text(
                          "let's chat",
                          style: Get.textTheme.bodyMedium,
                        ),
                        isHover: controller.stackContactUs,
                        onTap: () {
                          controller.coastController.animateTo(
                            beach: 4,
                            duration: const Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ],
                  ),
                ),
                tablet: Container(
                  height: 124.h,
                  width: 1440.w,
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          MobileDrawer.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.white,
                          size: 70.sp,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onHover: (hover) {
                          controller.stackLogo.value = hover;
                        },
                        onPressed: () {
                          controller.stackLogo.value = true;
                          Timer(
                            const Duration(seconds: 1),
                            () {
                              controller.stackLogo.value = false;
                            },
                          );
                          controller.coastController.animateTo(
                            beach: 0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Obx(
                          () {
                            return AnimatedCrossFade(
                              duration: const Duration(milliseconds: 200),
                              crossFadeState:
                                  controller.page % 2 == 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                              firstChild: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/E.svg",
                                    width: 90.w,
                                    fit: BoxFit.fitWidth,
                                    colorFilter: const ColorFilter.mode(
                                      secColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    top: controller.stackLogo.value ? 0 : -3.h,
                                    left: controller.stackLogo.value ? 0 : -3.h,
                                    child: SvgPicture.asset(
                                      "assets/svg/E.svg",
                                      width: 90.w,
                                      fit: BoxFit.fitWidth,
                                      colorFilter: const ColorFilter.mode(
                                        priColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              secondChild: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/E.svg",
                                    width: 90.w,
                                    fit: BoxFit.fitWidth,
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    top: controller.stackLogo.value ? 0 : -3.h,
                                    left: controller.stackLogo.value ? 0 : -3.h,
                                    child: SvgPicture.asset(
                                      "assets/svg/E.svg",
                                      width: 90.w,
                                      fit: BoxFit.fitWidth,
                                      colorFilter: const ColorFilter.mode(
                                        secColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.transparent,
                          size: 70.sp,
                        ),
                      ),
                    ],
                  ),
                ),
                mobile: Container(
                  height: 124.h,
                  width: 1440.w,
                  padding: EdgeInsets.symmetric(horizontal: 50.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          MobileDrawer.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.white,
                          size: 100.sp,
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        onHover: (hover) {
                          controller.stackLogo.value = hover;
                        },
                        onPressed: () {
                          controller.stackLogo.value = true;
                          Timer(
                            const Duration(seconds: 1),
                            () {
                              controller.stackLogo.value = false;
                            },
                          );
                          controller.coastController.animateTo(
                            beach: 0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: Obx(
                          () {
                            return AnimatedCrossFade(
                              duration: const Duration(milliseconds: 200),
                              crossFadeState:
                                  controller.page % 2 == 0 ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                              firstChild: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/E.svg",
                                    width: 120.w,
                                    fit: BoxFit.fitWidth,
                                    colorFilter: const ColorFilter.mode(
                                      secColor,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    top: controller.stackLogo.value ? 0 : -3.h,
                                    left: controller.stackLogo.value ? 0 : -3.h,
                                    child: SvgPicture.asset(
                                      "assets/svg/E.svg",
                                      width: 120.w,
                                      fit: BoxFit.fitWidth,
                                      colorFilter: const ColorFilter.mode(
                                        priColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              secondChild: Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  SvgPicture.asset(
                                    "assets/svg/E.svg",
                                    width: 120.w,
                                    fit: BoxFit.fitWidth,
                                    colorFilter: const ColorFilter.mode(
                                      Colors.white,
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  AnimatedPositioned(
                                    duration: const Duration(milliseconds: 200),
                                    top: controller.stackLogo.value ? 0 : -3.h,
                                    left: controller.stackLogo.value ? 0 : -3.h,
                                    child: SvgPicture.asset(
                                      "assets/svg/E.svg",
                                      width: 120.w,
                                      fit: BoxFit.fitWidth,
                                      colorFilter: const ColorFilter.mode(
                                        secColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.menu_rounded,
                          color: Colors.transparent,
                          size: 100.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
