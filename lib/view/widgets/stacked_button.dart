import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';

class StackedButton extends GetWidget<PortfolioController> {
  const StackedButton({
    Key? key,
    required this.height,
    required this.width,
    required this.title,
    required this.isHover,
    required this.onTap,
  }) : super(key: key);
  final double height;
  final double width;
  final Widget title;
  final Rx<bool> isHover;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onHover: (hover) {
        isHover.value = hover;
      },
      onPressed: onTap,
      child: Obx(
        () {
          return Stack(
            clipBehavior: Clip.none,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: height,
                width: width,
                decoration: BoxDecoration(
                  color: controller.getBackColor.value,
                  borderRadius: BorderRadius.circular(100.r),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 200),
                top: isHover.value ? 0 : -3.h,
                left: isHover.value ? 0 : -3.h,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: height,
                  width: width,
                  decoration: BoxDecoration(
                    color: controller.getFrontColor.value,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  alignment: Alignment.center,
                  child: title,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
