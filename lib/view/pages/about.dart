import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';

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
        Container(
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
                      size: 700.h,
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
                      size: 700.h,
                      styles: BlobStyles(
                        color: secColor,
                        fillType: BlobFillType.stroke,
                        strokeWidth: 4,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Image.asset(
                      "assets/png/header shot.png",
                      height: 900.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  150.verticalSpace,
                  SizedBox(
                    width: 500.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "<",
                          style: Get.textTheme.headline2!.copyWith(
                            color: secColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          "bio",
                          style: Get.textTheme.bodyText1!.copyWith(
                            color: secColor,
                            fontSize: 25.sp,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          ">",
                          style: Get.textTheme.headline2!.copyWith(
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
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nArcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem id purus purus, consectetur adipiscing elit. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.",
                      style: Get.textTheme.subtitle1,
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
                          style: Get.textTheme.headline2!.copyWith(
                            color: secColor,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          "skills",
                          style: Get.textTheme.bodyText1!.copyWith(
                            color: secColor,
                            fontSize: 25.sp,
                          ),
                        ),
                        5.horizontalSpace,
                        Text(
                          ">",
                          style: Get.textTheme.headline2!.copyWith(
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
              50.horizontalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
