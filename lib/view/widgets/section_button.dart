import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';

class SectionButton extends GetWidget<PortfolioController> {
  const SectionButton({Key? key, required this.title, required this.index}) : super(key: key);
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(Colors.transparent),
      ),
      onHover: (hover) {
        controller.stackHeader[index] = hover;
      },
      onPressed: () {
        controller.coastController.animateTo(
          beach: index + 1,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
      },
      child: Obx(
        () {
          return Text(
            title,
            style: Get.textTheme.bodyMedium!.copyWith(
              color: controller.stackHeader[index]
                  ? secColor
                  : controller.page.value == index + 1
                      ? secColor
                      : Colors.white,
            ),
          );
        },
      ),
    );
  }
}
