import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blobs/blobs.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
            padding: EdgeInsets.symmetric(horizontal: 150.w),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1000),
                    delay: const Duration(milliseconds: 100),
                    childAnimationBuilder: (child) => SlideAnimation(
                      horizontalOffset: -100.w,
                      curve: Curves.easeOut,
                      child: FadeInAnimation(
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    ),
                    children: [
                      Text(
                        "Hi! I'm Olawole Oyedele Emmanuel",
                        style: Get.textTheme.displayMedium!.copyWith(color: Colors.white),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 60.h,
                        child: DefaultTextStyle(
                          style: Get.textTheme.bodyLarge!,
                          child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            pause: const Duration(seconds: 2),
                            repeatForever: true,
                            animatedTexts: [
                              TyperAnimatedText("flutter engineer"),
                              TyperAnimatedText(
                                "ui/ux designer",
                                textStyle: Get.textTheme.bodyLarge!.copyWith(color: secColor),
                              ),
                              TyperAnimatedText("backend engineer"),
                              TyperAnimatedText(
                                "graphics designer",
                                textStyle: Get.textTheme.bodyLarge!.copyWith(color: secColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        width: 500.w,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.",
                          style: Get.textTheme.titleMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 900.h,
                      width: 400.w,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Blob.animatedRandom(
                        duration: const Duration(milliseconds: 1500),
                        loop: true,
                        size: 800.h,
                        styles: BlobStyles(
                          color: secColor,
                          fillType: BlobFillType.stroke,
                          strokeWidth: 4,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Blob.animatedRandom(
                        duration: const Duration(milliseconds: 1500),
                        loop: true,
                        size: 800.h,
                        styles: BlobStyles(
                          color: priColor,
                          fillType: BlobFillType.fill,
                        ),
                      ),
                    ),
                    Positioned(
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
                ),
                50.horizontalSpace,
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
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 500.h,
                      width: 400.w,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Blob.animatedRandom(
                        duration: const Duration(milliseconds: 1500),
                        loop: true,
                        size: 500.h,
                        styles: BlobStyles(
                          color: secColor,
                          fillType: BlobFillType.stroke,
                          strokeWidth: 4,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Blob.animatedRandom(
                        duration: const Duration(milliseconds: 1500),
                        loop: true,
                        size: 500.h,
                        styles: BlobStyles(
                          color: priColor,
                          fillType: BlobFillType.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Crab(
                        tag: "header",
                        child: Image.asset(
                          "assets/png/header shot.png",
                          height: 500.h,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
                50.verticalSpace,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1000),
                    delay: const Duration(milliseconds: 100),
                    childAnimationBuilder: (child) => SlideAnimation(
                      verticalOffset: -100.w,
                      curve: Curves.easeOut,
                      child: FadeInAnimation(
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    ),
                    children: [
                      SizedBox(
                        width: 1440.w,
                        child: Text(
                          "Hi! I'm Olawole Oyedele Emmanuel",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.displayMedium!.copyWith(
                            fontSize: 45.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 40.h,
                        width: 1440.w,
                        child: DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: Get.textTheme.bodyLarge!.copyWith(
                            fontSize: 60.sp,
                          ),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            pause: const Duration(seconds: 2),
                            repeatForever: true,
                            animatedTexts: [
                              TyperAnimatedText(
                                "flutter engineer",
                                textAlign: TextAlign.center,
                              ),
                              TyperAnimatedText(
                                "ui/ux designer",
                                textAlign: TextAlign.center,
                                textStyle: Get.textTheme.bodyLarge!.copyWith(
                                  fontSize: 60.sp,
                                  color: secColor,
                                ),
                              ),
                              TyperAnimatedText(
                                "backend engineer",
                                textAlign: TextAlign.center,
                              ),
                              TyperAnimatedText(
                                "graphics designer",
                                textAlign: TextAlign.center,
                                textStyle: Get.textTheme.bodyLarge!.copyWith(
                                  fontSize: 60.sp,
                                  color: secColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      10.verticalSpace,
                      SizedBox(
                        width: 1440.w,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
                        ),
                      ),
                    ],
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
                70.verticalSpace,
                Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 500.h,
                      width: 400.w,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Blob.animatedRandom(
                        duration: const Duration(milliseconds: 1500),
                        loop: true,
                        size: 500.h,
                        styles: BlobStyles(
                          color: secColor,
                          fillType: BlobFillType.stroke,
                          strokeWidth: 4,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Blob.animatedRandom(
                        duration: const Duration(milliseconds: 1500),
                        loop: true,
                        size: 500.h,
                        styles: BlobStyles(
                          color: priColor,
                          fillType: BlobFillType.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Crab(
                        tag: "header",
                        child: Image.asset(
                          "assets/png/header shot.png",
                          height: 600.h,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
                50.verticalSpace,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1000),
                    delay: const Duration(milliseconds: 100),
                    childAnimationBuilder: (child) => SlideAnimation(
                      verticalOffset: -100.w,
                      curve: Curves.easeOut,
                      child: FadeInAnimation(
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    ),
                    children: [
                      SizedBox(
                        width: 1440.w,
                        child: Text(
                          "Hi! I'm Olawole Oyedele Emmanuel",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.displayMedium!.copyWith(
                            fontSize: 55.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 40.h,
                        width: 1440.w,
                        child: DefaultTextStyle(
                          textAlign: TextAlign.center,
                          style: Get.textTheme.bodyLarge!.copyWith(
                            fontSize: 70.sp,
                          ),
                          child: AnimatedTextKit(
                            isRepeatingAnimation: true,
                            pause: const Duration(seconds: 2),
                            repeatForever: true,
                            animatedTexts: [
                              TyperAnimatedText(
                                "flutter engineer",
                                textAlign: TextAlign.center,
                              ),
                              TyperAnimatedText(
                                "ui/ux designer",
                                textAlign: TextAlign.center,
                                textStyle: Get.textTheme.bodyLarge!.copyWith(
                                  fontSize: 70.sp,
                                  color: secColor,
                                ),
                              ),
                              TyperAnimatedText(
                                "backend engineer",
                                textAlign: TextAlign.center,
                              ),
                              TyperAnimatedText(
                                "graphics designer",
                                textAlign: TextAlign.center,
                                textStyle: Get.textTheme.bodyLarge!.copyWith(
                                  fontSize: 70.sp,
                                  color: secColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 1440.w,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.",
                          textAlign: TextAlign.center,
                          style: Get.textTheme.titleMedium!.copyWith(fontSize: 50.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
