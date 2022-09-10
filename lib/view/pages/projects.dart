import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/widgets/stacked_button.dart';

class Projects extends GetWidget<PortfolioController> {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1024.h,
      width: 1440.w,
      color: priColor,
      padding: EdgeInsets.fromLTRB(100.w, 150.h, 100.w, 50.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              50.horizontalSpace,
              Container(
                height: 450.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/jpg/BetaLife-01.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Container(
                height: 450.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/jpg/BetaLife-02.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomCenter,
                  ),
                ),
              ),
              Container(
                height: 450.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/jpg/BetaLife-03.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Container(
                height: 450.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/jpg/BetaLife-04.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              Container(
                height: 450.h,
                width: 180.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  image: const DecorationImage(
                    image: AssetImage("assets/jpg/BetaLife-05.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
              50.horizontalSpace,
            ],
          ),
          30.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StackedButton(
                height: 70.h,
                width: 100.w,
                title: FaIcon(
                  FontAwesomeIcons.arrowLeftLong,
                  color: Colors.white,
                  size: 25.sp,
                ),
                isHover: controller.previous,
                onTap: () {},
              ),
              20.horizontalSpace,
              Container(
                height: 130.h,
                width: 130.h,
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
              20.horizontalSpace,
              StackedButton(
                height: 70.h,
                width: 100.w,
                title: FaIcon(
                  FontAwesomeIcons.arrowRightLong,
                  color: Colors.white,
                  size: 25.sp,
                ),
                isHover: controller.next,
                onTap: () {},
              ),
            ],
          ),
          30.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100.w),
            child: Text(
              "BetaLife is a health-tech solution aimed at improving life expectancy, allowing real-time communications, improving health-care processes, facilitating faster emergency response, enhancing patient safety and supporting healthier lifestyles. I worked as the Lead Mobile Developer on this project, developing the frontend and managing the network requests. BetaLife is available on both Google Play Store and Apple App Store.",
              textAlign: TextAlign.center,
              style: Get.textTheme.subtitle1,
            ),
          ),
        ],
      ),
    );
  }
}
