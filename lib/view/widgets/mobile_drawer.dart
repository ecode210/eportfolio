import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:portfolio_update/view/widgets/breakpoints.dart';
import 'package:portfolio_update/view/widgets/section_button.dart';

class MobileDrawer {
  static void openDrawer() {
    Get.generalDialog(
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      barrierLabel: "",
      barrierColor: Colors.black.withOpacity(0.5),
      pageBuilder: (context, animation, secondaryAnimation) {
        return const SizedBox();
      },
      transitionBuilder: (context, animation, secondaryAnimation, widget) {
        return Transform.scale(
          scale: animation.value,
          child: Opacity(
            opacity: animation.value,
            child: Dialog(
              backgroundColor: Colors.transparent,
              alignment: Alignment.center,
              insetPadding: EdgeInsets.zero,
              elevation: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  height: 1024.h,
                  width: 1440.w,
                  color: Colors.black.withOpacity(0.1),
                  child: Breakpoints(
                    tablet: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SectionButton(title: "home", index: 0),
                        50.verticalSpace,
                        const SectionButton(title: "about", index: 1),
                        50.verticalSpace,
                        const SectionButton(title: "services", index: 2),
                        50.verticalSpace,
                        const SectionButton(title: "projects", index: 3),
                        50.verticalSpace,
                        const SectionButton(title: "let's chat", index: 4),
                      ],
                    ),
                    mobile: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SectionButton(title: "home", index: 0),
                        30.verticalSpace,
                        const SectionButton(title: "about", index: 1),
                        30.verticalSpace,
                        const SectionButton(title: "services", index: 2),
                        30.verticalSpace,
                        const SectionButton(title: "projects", index: 3),
                        30.verticalSpace,
                        const SectionButton(title: "let's chat", index: 4),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
