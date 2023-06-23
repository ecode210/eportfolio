import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';

class Services extends GetWidget<PortfolioController> {
  const Services({Key? key}) : super(key: key);

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
                      "services",
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
                250.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.topCenter,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 1000),
                            delay: const Duration(milliseconds: 100),
                            childAnimationBuilder: (child) => SlideAnimation(
                              verticalOffset: 100.h,
                              curve: Curves.easeOut,
                              child: FadeInAnimation(
                                curve: Curves.easeOut,
                                child: child,
                              ),
                            ),
                            children: [
                              0.verticalSpace,
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
                                      "software developer",
                                      style: Get.textTheme.bodyMedium!.copyWith(fontSize: 18.sp, color: secColor),
                                    ),
                                    20.verticalSpace,
                                    Text(
                                      "I build mobile, web, and desktop apps that fit seamlessly with your desired project. My focus is on performance, design, responsiveness, and security.",
                                      textAlign: TextAlign.center,
                                      style: Get.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
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
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 1000),
                            delay: const Duration(milliseconds: 300),
                            childAnimationBuilder: (child) => SlideAnimation(
                              verticalOffset: 100.h,
                              curve: Curves.easeOut,
                              child: FadeInAnimation(
                                curve: Curves.easeOut,
                                child: child,
                              ),
                            ),
                            children: [
                              0.verticalSpace,
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
                                      style: Get.textTheme.bodyMedium!.copyWith(fontSize: 18.sp, color: secColor),
                                    ),
                                    20.verticalSpace,
                                    Text(
                                      "I design captivating interfaces and create unique experiences for various scale businesses. My talent and passion both lie in design.",
                                      textAlign: TextAlign.center,
                                      style: Get.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
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
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: AnimationConfiguration.toStaggeredList(
                            duration: const Duration(milliseconds: 1000),
                            delay: const Duration(milliseconds: 500),
                            childAnimationBuilder: (child) => SlideAnimation(
                              verticalOffset: 100.h,
                              curve: Curves.easeOut,
                              child: FadeInAnimation(
                                curve: Curves.easeOut,
                                child: child,
                              ),
                            ),
                            children: [
                              0.verticalSpace,
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
                                      "backend developer",
                                      style: Get.textTheme.bodyMedium!.copyWith(fontSize: 18.sp, color: secColor),
                                    ),
                                    20.verticalSpace,
                                    Text(
                                      "I develop custom backend solutions for various interfaces. With my technical knowledge, I know what data to obtain to satisfy your goals.",
                                      textAlign: TextAlign.center,
                                      style: Get.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
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
          ),
          tablet: Container(
            height: 1024.h,
            width: 1440.w,
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Column(
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
                      "services",
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
                100.verticalSpace,
                Expanded(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 1000),
                      delay: const Duration(milliseconds: 300),
                      childAnimationBuilder: (child) => SlideAnimation(
                        verticalOffset: -100.h,
                        curve: Curves.easeOut,
                        child: FadeInAnimation(
                          curve: Curves.easeOut,
                          child: child,
                        ),
                      ),
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                0.verticalSpace,
                                Container(
                                  height: 170.h,
                                  width: 1000.w,
                                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
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
                                        "software developer",
                                        style: Get.textTheme.bodyMedium!.copyWith(
                                          fontSize: 40.sp,
                                          color: secColor,
                                        ),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        "I build mobile, web, and desktop apps that fit seamlessly with your desired project. My focus is on performance, design, responsiveness, and security.",
                                        textAlign: TextAlign.center,
                                        style: Get.textTheme.titleMedium!.copyWith(
                                          fontSize: 30.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -90.h,
                              child: Image.asset(
                                "assets/png/app developer.png",
                                height: 150.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        100.verticalSpace,
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                0.verticalSpace,
                                Container(
                                  height: 170.h,
                                  width: 1000.w,
                                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
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
                                        style: Get.textTheme.bodyMedium!.copyWith(
                                          fontSize: 40.sp,
                                          color: secColor,
                                        ),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        "I design captivating interfaces and create unique experiences for various scale businesses. My talent and passion both lie in design.",
                                        textAlign: TextAlign.center,
                                        style: Get.textTheme.titleMedium!.copyWith(
                                          fontSize: 30.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -90.h,
                              child: Image.asset(
                                "assets/png/ui ux design.png",
                                height: 140.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        100.verticalSpace,
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                0.verticalSpace,
                                Container(
                                  height: 170.h,
                                  width: 1000.w,
                                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
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
                                        "backend developer",
                                        style: Get.textTheme.bodyMedium!.copyWith(
                                          fontSize: 40.sp,
                                          color: secColor,
                                        ),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        "I develop custom backend solutions for various interfaces. With my technical knowledge, I know what data to obtain to satisfy your goals.",
                                        textAlign: TextAlign.center,
                                        style: Get.textTheme.titleMedium!.copyWith(
                                          fontSize: 30.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -90.h,
                              child: Image.asset(
                                "assets/png/api developer.png",
                                height: 150.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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
                      "services",
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
                100.verticalSpace,
                Expanded(
                  child: Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: const Duration(milliseconds: 1000),
                      delay: const Duration(milliseconds: 300),
                      childAnimationBuilder: (child) => SlideAnimation(
                        verticalOffset: -100.h,
                        curve: Curves.easeOut,
                        child: FadeInAnimation(
                          curve: Curves.easeOut,
                          child: child,
                        ),
                      ),
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                0.verticalSpace,
                                Container(
                                  height: 170.h,
                                  width: 1000.w,
                                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
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
                                        "software developer",
                                        style: Get.textTheme.bodyMedium!.copyWith(
                                          fontSize: 50.sp,
                                          color: secColor,
                                        ),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        "I build mobile, web, and desktop apps that fit seamlessly with your desired project. My focus is on performance, design, responsiveness, and security.",
                                        textAlign: TextAlign.center,
                                        style: Get.textTheme.titleMedium!.copyWith(
                                          fontSize: 40.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -90.h,
                              child: Image.asset(
                                "assets/png/app developer.png",
                                height: 150.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        100.verticalSpace,
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                0.verticalSpace,
                                Container(
                                  height: 170.h,
                                  width: 1000.w,
                                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
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
                                        style: Get.textTheme.bodyMedium!.copyWith(
                                          fontSize: 50.sp,
                                          color: secColor,
                                        ),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        "I design captivating interfaces and create unique experiences for various scale businesses. My talent and passion both lie in design.",
                                        textAlign: TextAlign.center,
                                        style: Get.textTheme.titleMedium!.copyWith(
                                          fontSize: 40.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -90.h,
                              child: Image.asset(
                                "assets/png/ui ux design.png",
                                height: 140.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        100.verticalSpace,
                        Stack(
                          clipBehavior: Clip.none,
                          alignment: Alignment.topCenter,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                0.verticalSpace,
                                Container(
                                  height: 170.h,
                                  width: 1000.w,
                                  padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 20.h),
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
                                        "backend developer",
                                        style: Get.textTheme.bodyMedium!.copyWith(
                                          fontSize: 50.sp,
                                          color: secColor,
                                        ),
                                      ),
                                      10.verticalSpace,
                                      Text(
                                        "I develop custom backend solutions for various interfaces. With my technical knowledge, I know what data to obtain to satisfy your goals.",
                                        textAlign: TextAlign.center,
                                        style: Get.textTheme.titleMedium!.copyWith(
                                          fontSize: 40.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: -90.h,
                              child: Image.asset(
                                "assets/png/api developer.png",
                                height: 150.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                        // Stack(
                        //   clipBehavior: Clip.none,
                        //   alignment: Alignment.topCenter,
                        //   children: [
                        //     Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: AnimationConfiguration.toStaggeredList(
                        //         duration: const Duration(milliseconds: 1000),
                        //         delay: const Duration(milliseconds: 300),
                        //         childAnimationBuilder: (child) => SlideAnimation(
                        //           verticalOffset: 100.h,
                        //           curve: Curves.easeOut,
                        //           child: FadeInAnimation(
                        //             curve: Curves.easeOut,
                        //             child: child,
                        //           ),
                        //         ),
                        //         children: [
                        //           0.verticalSpace,
                        //           Container(
                        //             height: 400.h,
                        //             width: 380.w,
                        //             padding: EdgeInsets.all(20.w),
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(50.r),
                        //               border: Border.all(
                        //                 color: secColor,
                        //                 width: 2.w,
                        //               ),
                        //             ),
                        //             child: Column(
                        //               mainAxisAlignment: MainAxisAlignment.end,
                        //               children: [
                        //                 Text(
                        //                   "ui/ux design",
                        //                   style: Get.textTheme.bodyMedium!.copyWith(fontSize: 18.sp, color: secColor),
                        //                 ),
                        //                 20.verticalSpace,
                        //                 Text(
                        //                   "I design captivating interfaces and create unique experiences for various scale businesses. My talent and passion both lie in design.",
                        //                   textAlign: TextAlign.center,
                        //                   style: Get.textTheme.titleMedium,
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     Positioned(
                        //       top: -190.h,
                        //       child: Image.asset(
                        //         "assets/png/ui ux design.png",
                        //         height: 350.h,
                        //         fit: BoxFit.fitHeight,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // Stack(
                        //   clipBehavior: Clip.none,
                        //   alignment: Alignment.topCenter,
                        //   children: [
                        //     Column(
                        //       mainAxisSize: MainAxisSize.min,
                        //       children: AnimationConfiguration.toStaggeredList(
                        //         duration: const Duration(milliseconds: 1000),
                        //         delay: const Duration(milliseconds: 500),
                        //         childAnimationBuilder: (child) => SlideAnimation(
                        //           verticalOffset: 100.h,
                        //           curve: Curves.easeOut,
                        //           child: FadeInAnimation(
                        //             curve: Curves.easeOut,
                        //             child: child,
                        //           ),
                        //         ),
                        //         children: [
                        //           0.verticalSpace,
                        //           Container(
                        //             height: 400.h,
                        //             width: 380.w,
                        //             padding: EdgeInsets.all(20.w),
                        //             decoration: BoxDecoration(
                        //               borderRadius: BorderRadius.circular(50.r),
                        //               border: Border.all(
                        //                 color: secColor,
                        //                 width: 2.w,
                        //               ),
                        //             ),
                        //             child: Column(
                        //               mainAxisAlignment: MainAxisAlignment.end,
                        //               children: [
                        //                 Text(
                        //                   "api developer",
                        //                   style: Get.textTheme.bodyMedium!.copyWith(fontSize: 18.sp, color: secColor),
                        //                 ),
                        //                 20.verticalSpace,
                        //                 Text(
                        //                   "I develop custom REST API endpoints for consumption on any interface. With my technical knowledge, I know what data to obtain to satisfy your goals.",
                        //                   textAlign: TextAlign.center,
                        //                   style: Get.textTheme.titleMedium,
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //     Positioned(
                        //       top: -210.h,
                        //       child: Image.asset(
                        //         "assets/png/api developer.png",
                        //         height: 420.h,
                        //         fit: BoxFit.fitHeight,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -1024.h,
          left: 0,
          child: Crab(
            tag: "header",
            child: Image.asset(
              "assets/png/header shot.png",
              height: 900.h,
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ],
    );
  }
}
