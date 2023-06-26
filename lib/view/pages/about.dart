import 'package:blobs/blobs.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

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
            height: 1324.h,
            width: 2040.w,
            fit: BoxFit.cover,
          ),
        ),
        Breakpoints(
          web: Container(
            height: 1024.h,
            width: 1440.w,
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Row(
              children: [
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
                          color: Colors.white,
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
                          color: secColor,
                          fillType: BlobFillType.stroke,
                          strokeWidth: 4,
                        ),
                      ),
                    ),
                    Positioned(
                      child: Crab(
                        tag: "header",
                        child: Image.asset(
                          "assets/png/header shot.png",
                          height: 800.h,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1500),
                    delay: const Duration(milliseconds: 100),
                    childAnimationBuilder: (child) => SlideAnimation(
                      horizontalOffset: 100.w,
                      curve: Curves.easeOut,
                      child: FadeInAnimation(
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    ),
                    children: [
                      150.verticalSpace,
                      SizedBox(
                        width: 500.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "<",
                              style: Get.textTheme.displayMedium!.copyWith(
                                color: secColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              "bio",
                              style: Get.textTheme.bodyLarge!.copyWith(
                                color: secColor,
                                fontSize: 25.sp,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              ">",
                              style: Get.textTheme.displayMedium!.copyWith(
                                color: secColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      10.verticalSpace,
                      SizedBox(
                        width: 600.w,
                        child: Text(
                          "Experienced software engineer with a strong background in Flutter and Golang, equipped with a Bachelor's degree in Computer Science. With over 3 years of industrial experience in the field, I have a proven track record of designing and developing exceptional applications across various platforms, including mobile, web, and desktop.\n\nAs a creative problem-solver, I thrive in demanding situations where I can leverage my technical knowledge to devise innovative solutions. In addition to my technical skills, I also possess a strong UI/UX and Graphics design background. This allows me to create visually appealing interfaces that enhance the overall user experience, ensuring that the software I develop not only performs flawlessly but also delights users.\n\nOutside of work, I enjoy playing video games, discovering new culinary experiences, and spending quality time with friends. These hobbies provide me with opportunities for relaxation, cultural exploration, and meaningful connections, all of which contribute to my personal growth and creativity.",
                          style: Get.textTheme.titleMedium,
                        ),
                      ),
                      20.verticalSpace,
                      SizedBox(
                        width: 500.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "<",
                              style: Get.textTheme.displayMedium!.copyWith(
                                color: secColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              "skills",
                              style: Get.textTheme.bodyLarge!.copyWith(
                                color: secColor,
                                fontSize: 25.sp,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              ">",
                              style: Get.textTheme.displayMedium!.copyWith(
                                color: secColor,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      20.verticalSpace,
                      SizedBox(
                        width: 600.w,
                        height: 150.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/Flutter.svg",
                              height: 65.h,
                              fit: BoxFit.fitHeight,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SvgPicture.asset(
                                "assets/svg/MongoDB.svg",
                                height: 65.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h),
                              child: SvgPicture.asset(
                                "assets/svg/Golang.svg",
                                height: 40.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SvgPicture.asset(
                                "assets/svg/Postman.svg",
                                height: 65.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/svg/Firebase.svg",
                              height: 65.h,
                              fit: BoxFit.fitHeight,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SvgPicture.asset(
                                "assets/svg/Illustrator.svg",
                                height: 65.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/svg/Photoshop.svg",
                              height: 65.h,
                              fit: BoxFit.fitHeight,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SvgPicture.asset(
                                "assets/svg/Docker.svg",
                                height: 65.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/svg/Figma.svg",
                              height: 65.h,
                              fit: BoxFit.fitHeight,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: SvgPicture.asset(
                                "assets/svg/Github.svg",
                                height: 65.h,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SvgPicture.asset(
                              "assets/svg/Postgresql.svg",
                              height: 65.h,
                              fit: BoxFit.fitHeight,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                100.verticalSpace,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1500),
                    delay: const Duration(milliseconds: 100),
                    childAnimationBuilder: (child) => SlideAnimation(
                      horizontalOffset: 100.w,
                      curve: Curves.easeOut,
                      child: FadeInAnimation(
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    ),
                    children: [
                      SizedBox(
                        width: 1440.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "<",
                              style: Get.textTheme.displayMedium!.copyWith(
                                color: secColor,
                                fontSize: 40.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              "bio",
                              style: Get.textTheme.bodyLarge!.copyWith(
                                color: secColor,
                                fontSize: 50.sp,
                              ),
                            ),
                            5.horizontalSpace,
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
                      ),
                      10.verticalSpace,
                      SizedBox(
                        width: 1440.w,
                        child: Text(
                          "Experienced software engineer with a strong background in Flutter and Golang, equipped with a Bachelor's degree in Computer Science. With over 3 years of industrial experience in the field, I have a proven track record of designing and developing exceptional applications across various platforms, including mobile, web, and desktop.\n\nAs a creative problem-solver, I thrive in demanding situations where I can leverage my technical knowledge to devise innovative solutions. In addition to my technical skills, I also possess a strong UI/UX and Graphics design background. This allows me to create visually appealing interfaces that enhance the overall user experience, ensuring that the software I develop not only performs flawlessly but also delights users.\n\nOutside of work, I enjoy playing video games, discovering new culinary experiences, and spending quality time with friends. These hobbies provide me with opportunities for relaxation, cultural exploration, and meaningful connections, all of which contribute to my personal growth and creativity.",
                          textAlign: TextAlign.left,
                          style: Get.textTheme.titleMedium!.copyWith(fontSize: 35.sp),
                        ),
                      ),
                    ],
                  ),
                ),
                30.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 400.h,
                          width: 700.w,
                        ),
                        Positioned(
                          bottom: -50.h,
                          left: -80.h,
                          child: Blob.animatedRandom(
                            duration: const Duration(milliseconds: 1500),
                            loop: true,
                            size: 420.h,
                            styles: BlobStyles(
                              color: Colors.white,
                              fillType: BlobFillType.stroke,
                              strokeWidth: 4,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -50.h,
                          left: -80.h,
                          child: Blob.animatedRandom(
                            duration: const Duration(milliseconds: 1500),
                            loop: true,
                            size: 420.h,
                            styles: BlobStyles(
                              color: secColor,
                              fillType: BlobFillType.stroke,
                              strokeWidth: 4,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -50.h,
                          left: -30.h,
                          child: Crab(
                            tag: "header",
                            child: Image.asset(
                              "assets/png/header shot.png",
                              height: 450.h,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 2000),
                          delay: const Duration(milliseconds: 200),
                          childAnimationBuilder: (child) => SlideAnimation(
                            horizontalOffset: 100.w,
                            curve: Curves.easeOut,
                            child: FadeInAnimation(
                              curve: Curves.easeOut,
                              child: child,
                            ),
                          ),
                          children: [
                            SizedBox(
                              width: 1440.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "<",
                                    style: Get.textTheme.displayMedium!.copyWith(
                                      color: secColor,
                                      fontSize: 40.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  5.horizontalSpace,
                                  Text(
                                    "skills",
                                    style: Get.textTheme.bodyLarge!.copyWith(
                                      color: secColor,
                                      fontSize: 50.sp,
                                    ),
                                  ),
                                  5.horizontalSpace,
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
                            ),
                            20.verticalSpace,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/Flutter.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Firebase.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Photoshop.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/MongoDB.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Postman.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 40.h,
                                      child: SvgPicture.asset(
                                        "assets/svg/Golang.svg",
                                        width: 200.w,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Figma.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Illustrator.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Postgresql.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Github.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                100.verticalSpace,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: const Duration(milliseconds: 1500),
                    delay: const Duration(milliseconds: 100),
                    childAnimationBuilder: (child) => SlideAnimation(
                      horizontalOffset: 100.w,
                      curve: Curves.easeOut,
                      child: FadeInAnimation(
                        curve: Curves.easeOut,
                        child: child,
                      ),
                    ),
                    children: [
                      SizedBox(
                        width: 1440.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "<",
                              style: Get.textTheme.displayMedium!.copyWith(
                                color: secColor,
                                fontSize: 50.sp,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            5.horizontalSpace,
                            Text(
                              "bio",
                              style: Get.textTheme.bodyLarge!.copyWith(
                                color: secColor,
                                fontSize: 60.sp,
                              ),
                            ),
                            5.horizontalSpace,
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
                      ),
                      10.verticalSpace,
                      SizedBox(
                        width: 1440.w,
                        child: Text(
                          "Experienced software engineer with a strong background in Flutter and Golang, equipped with a Bachelor's degree in Computer Science. With over 3 years of industrial experience in the field, I have a proven track record of designing and developing exceptional applications across various platforms, including mobile, web, and desktop.\n\nAs a creative problem-solver, I thrive in demanding situations where I can leverage my technical knowledge to devise innovative solutions. In addition to my technical skills, I also possess a strong UI/UX and Graphics design background. This allows me to create visually appealing interfaces that enhance the overall user experience, ensuring that the software I develop not only performs flawlessly but also delights users.\n\nOutside of work, I enjoy playing video games, discovering new culinary experiences, and spending quality time with friends. These hobbies provide me with opportunities for relaxation, cultural exploration, and meaningful connections, all of which contribute to my personal growth and creativity.",
                          textAlign: TextAlign.left,
                          style: Get.textTheme.titleMedium!.copyWith(
                            fontSize: Get.size.width >= 400 ? 50.sp : 45.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                30.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          height: 300.h,
                          width: 700.w,
                        ),
                        Positioned(
                          bottom: -80.h,
                          left: -120.h,
                          child: Blob.animatedRandom(
                            duration: const Duration(milliseconds: 1500),
                            loop: true,
                            size: 350.h,
                            styles: BlobStyles(
                              color: Colors.white,
                              fillType: BlobFillType.stroke,
                              strokeWidth: 4,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -80.h,
                          left: -120.h,
                          child: Blob.animatedRandom(
                            duration: const Duration(milliseconds: 1500),
                            loop: true,
                            size: 350.h,
                            styles: BlobStyles(
                              color: secColor,
                              fillType: BlobFillType.stroke,
                              strokeWidth: 4,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -90.h,
                          left: -110.h,
                          child: Crab(
                            tag: "header",
                            child: Image.asset(
                              "assets/png/header shot.png",
                              height: 400.h,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: AnimationConfiguration.toStaggeredList(
                          duration: const Duration(milliseconds: 2000),
                          delay: const Duration(milliseconds: 200),
                          childAnimationBuilder: (child) => SlideAnimation(
                            horizontalOffset: 100.w,
                            curve: Curves.easeOut,
                            child: FadeInAnimation(
                              curve: Curves.easeOut,
                              child: child,
                            ),
                          ),
                          children: [
                            SizedBox(
                              width: 1440.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "<",
                                    style: Get.textTheme.displayMedium!.copyWith(
                                      color: secColor,
                                      fontSize: 50.sp,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                  5.horizontalSpace,
                                  Text(
                                    "skills",
                                    style: Get.textTheme.bodyLarge!.copyWith(
                                      color: secColor,
                                      fontSize: 60.sp,
                                    ),
                                  ),
                                  5.horizontalSpace,
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
                            ),
                            20.verticalSpace,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/Flutter.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Firebase.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/MongoDB.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: 40.h,
                                      child: SvgPicture.asset(
                                        "assets/svg/Golang.svg",
                                        width: 200.w,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Photoshop.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Postgresql.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Github.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      "assets/svg/Figma.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Illustrator.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                    25.verticalSpace,
                                    SvgPicture.asset(
                                      "assets/svg/Postman.svg",
                                      height: 40.h,
                                      fit: BoxFit.fitHeight,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
