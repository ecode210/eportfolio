import 'package:anitex/anitex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';
import 'package:portfolio_update/view/widgets/stacked_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Projects extends GetWidget<PortfolioController> {
  const Projects({Key? key}) : super(key: key);

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
        SizedBox(
          height: 1024.h,
          width: 1440.w,
          child: Row(
            children: [
              Stack(
                children: [
                  AspectRatio(
                    aspectRatio: 2 / 3,
                    child: Container(
                      height: 1024.h,
                      color: priColor,
                      child: Obx(() {
                        return PageView(
                          controller: controller.projectImagesController,
                          scrollDirection: Axis.horizontal,
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            controller.projectImages[0][controller.projectIndex.value],
                            controller.projectImages[1][controller.projectIndex.value],
                            controller.projectImages[2][controller.projectIndex.value],
                            controller.projectImages[3][controller.projectIndex.value],
                            controller.projectImages[4][controller.projectIndex.value],
                          ],
                        );
                      }),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 2 / 3,
                    child: Container(
                      height: 1024.h,
                      color: priColor.withOpacity(0.25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: SmoothPageIndicator(
                              controller: controller.projectImagesController,
                              count: 5,
                              effect: WormEffect(
                                activeDotColor: secColor,
                                dotColor: Colors.white,
                                dotHeight: 20.h,
                                dotWidth: 20.h,
                              ),
                              axisDirection: Axis.horizontal,
                              onDotClicked: (index) {
                                controller.projectImagesController.animateToPage(
                                  index,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                            ),
                          ),
                          80.verticalSpace,
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(50.w, 150.h, 100.w, 50.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(() {
                        return Row(
                          children: [
                            AnimatedSwitcher(
                              duration: const Duration(milliseconds: 350),
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
                            ),
                            20.horizontalSpace,
                            AnimatedText(
                              controller.projectTitles[controller.projectIndex.value],
                              style: Get.textTheme.bodyLarge!.copyWith(
                                color: Colors.white,
                                fontSize: 25.sp,
                              ),
                            ),
                            Expanded(
                              child: AnimatedSwitcher(
                                duration: const Duration(milliseconds: 350),
                                switchInCurve: Curves.easeIn,
                                switchOutCurve: Curves.easeOut,
                                child: controller.projectBadges[controller.projectIndex.value],
                                transitionBuilder: (child, animation) {
                                  return FadeTransition(
                                    opacity: animation,
                                    child: ScaleTransition(
                                      scale: animation,
                                      child: child,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        );
                      }),
                      30.verticalSpace,
                      Obx(() {
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 350),
                          switchInCurve: Curves.easeIn,
                          switchOutCurve: Curves.easeOut,
                          child: controller.projectDescriptions[controller.projectIndex.value],
                          transitionBuilder: (child, animation) {
                            return FadeTransition(
                              opacity: animation,
                              child: child,
                            );
                          },
                        );
                      }),
                      const Spacer(),
                      Row(
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
                              controller.projectImagesController.jumpToPage(0);
                            },
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
                            onTap: () {
                              if (controller.projectIndex.value >= 2) {
                                controller.projectIndex.value = 0;
                              } else {
                                controller.projectIndex.value++;
                              }
                              controller.projectImagesController.jumpToPage(0);
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
