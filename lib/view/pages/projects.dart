import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          Obx(() {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              child: controller.projectImages[controller.projectIndex.value],
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: animation,
                    alignment: Alignment.bottomCenter,
                    child: child,
                  ),
                );
              },
            );
          }),
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
                onTap: () {
                  if (controller.projectIndex.value <= 0) {
                    controller.projectIndex.value = 2;
                  } else {
                    controller.projectIndex.value--;
                  }
                },
              ),
              20.horizontalSpace,
              Obx(() {
                return AnimatedSwitcher(
                  duration: const Duration(milliseconds: 300),
                  switchInCurve: Curves.easeIn,
                  switchOutCurve: Curves.easeOut,
                  child: controller.projectIcons[controller.projectIndex.value],
                  transitionBuilder: (child, animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: ScaleTransition(
                        scale: animation,
                        child: child,
                      ),
                    );
                  },
                );
              }),
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
                onTap: () {
                  if (controller.projectIndex.value >= 2) {
                    controller.projectIndex.value = 0;
                  } else {
                    controller.projectIndex.value++;
                  }
                },
              ),
            ],
          ),
          30.verticalSpace,
          Obx(() {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              switchInCurve: Curves.easeIn,
              switchOutCurve: Curves.easeOut,
              child: controller.projectDescriptions[controller.projectIndex.value],
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: animation,
                    alignment: Alignment.topCenter,
                    child: child,
                  ),
                );
              },
            );
          }),
        ],
      ),
    );
  }
}
