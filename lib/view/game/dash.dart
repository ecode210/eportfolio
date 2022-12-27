import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';

class Dash extends GetWidget<PortfolioController> {
  const Dash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.addGameObject();
    return GestureDetector(
      onTap: () {
        controller.jump();
      },
      child: Container(
        height: 270.h,
        width: 1240.w,
        color: priColor.withOpacity(0),
        child: Obx(() {
          return Stack(
            alignment: Alignment.center,
            children: [
              ...controller.gameChildren,
              AnimatedBuilder(
                animation: controller.worldController,
                builder: (context, _) {
                  return Positioned(
                    right: 0,
                    top: 0,
                    child: Obx(() {
                      return Text(
                        "score: ${controller.runDistance.value.toInt()}  high score: ${controller.highScore.value}",
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      );
                    }),
                  );
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
