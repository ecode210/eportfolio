import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blobs/blobs.dart';
import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';

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
        Container(
          height: 1024.h,
          width: 1440.w,
          padding: EdgeInsets.symmetric(horizontal: 150.w),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi! I'm Olawole Oyedele Emmanuel",
                    style: Get.textTheme.headline2!.copyWith(color: Colors.white),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 60.h,
                    child: DefaultTextStyle(
                      style: Get.textTheme.bodyText1!,
                      child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        pause: const Duration(seconds: 2),
                        repeatForever: true,
                        animatedTexts: [
                          TyperAnimatedText("flutter developer"),
                          TyperAnimatedText(
                            "ui/ux designer",
                            textStyle: Get.textTheme.bodyText1!.copyWith(color: secColor),
                          ),
                          TyperAnimatedText("backend developer"),
                          TyperAnimatedText(
                            "graphics designer",
                            textStyle: Get.textTheme.bodyText1!.copyWith(color: secColor),
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
                      style: Get.textTheme.subtitle1,
                    ),
                  ),
                ],
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
      ],
    );
  }
}
