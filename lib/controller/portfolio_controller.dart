import 'dart:math';

import 'package:coast/coast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/view/game/cactus.dart';
import 'package:portfolio_update/view/game/cloud.dart';
import 'package:portfolio_update/view/game/dino.dart';
import 'package:portfolio_update/view/game/game_constants.dart';
import 'package:portfolio_update/view/game/game_object.dart';
import 'package:portfolio_update/view/game/ground.dart';

class PortfolioController extends GetxController with GetTickerProviderStateMixin {
  // Dashboard
  CoastController coastController = CoastController(initialPage: 0);
  Rx<bool> stackLogo = false.obs;
  Rx<bool> stackContactUs = false.obs;
  var stackHeader = [false, false, false, false].obs;
  Rx<int> page = 0.obs;
  Rx<Color> getFrontColor = priColor.obs;
  Rx<Color> getBackColor = secColor.obs;

  void changeColor(int page) {
    if (page % 2 == 0) {
      getFrontColor.value = priColor;
      getBackColor.value = secColor;
    } else {
      getFrontColor.value = secColor;
      getBackColor.value = Colors.white;
    }
  }

  // Project
  Rx<bool> previous = false.obs;
  Rx<bool> next = false.obs;
  RxInt projectIndex = 0.obs;
  PageController projectImagesController = PageController();
  RxBool isProjectImagesLoop = false.obs;
  List<Widget> projectIcons = [
    Container(
      key: const ValueKey(0),
      height: 70.h,
      width: 70.h,
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
    Container(
      key: const ValueKey(1),
      height: 70.h,
      width: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: SvgPicture.asset(
          "assets/svg/Helt.svg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      key: const ValueKey(2),
      height: 70.h,
      width: 70.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.r),
        child: SvgPicture.asset(
          "assets/svg/Helt Vendor.svg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];
  List<Widget> projectBadges = [
    Row(
      key: const ValueKey(0),
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          "assets/svg/PlayStore badge.svg",
          height: 70.h,
          fit: BoxFit.fitHeight,
        ),
        20.horizontalSpace,
        SvgPicture.asset(
          "assets/svg/AppStore badge.svg",
          height: 70.h,
          fit: BoxFit.fitHeight,
        ),
      ],
    ),
    Row(
      key: const ValueKey(1),
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SvgPicture.asset(
              "assets/svg/PlayStore badge.svg",
              height: 70.h,
              fit: BoxFit.fitHeight,
            ),
            Container(
              height: 70.h,
              width: 200.w,
              color: priColor.withOpacity(0.6),
              alignment: Alignment.center,
              child: Text(
                "COMING SOON",
                style: Get.textTheme.subtitle1!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ],
    ),
    Row(
      key: const ValueKey(2),
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(
          "assets/svg/Website badge.svg",
          height: 70.h,
          fit: BoxFit.fitHeight,
        ),
      ],
    ),
  ];
  List<String> projectTitles = ["betalife", "helt", "helt vendor"];
  List<List<Widget>> projectImages = [
    [
      Image.asset(
        "assets/jpg/BetaLife-01.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt-01.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt Vendor-01.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
    [
      Image.asset(
        "assets/jpg/BetaLife-02.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt-02.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt Vendor-02.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
    [
      Image.asset(
        "assets/jpg/BetaLife-03.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt-03.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt Vendor-03.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
    [
      Image.asset(
        "assets/jpg/BetaLife-04.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt-04.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt Vendor-04.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
    [
      Image.asset(
        "assets/jpg/BetaLife-05.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt-05.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
      Image.asset(
        "assets/jpg/Helt Vendor-05.jpg",
        height: 1024.h,
        fit: BoxFit.cover,
      ),
    ],
  ];
  List<Widget> projectDescriptions = [
    SizedBox(
      key: const ValueKey(0),
      child: Text(
        "Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nArcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem id purus purus, consectetur adipiscing elit. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.\n\nAuctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.",
        style: Get.textTheme.subtitle1,
      ),
    ),
    SizedBox(
      key: const ValueKey(1),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nArcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem id purus purus, consectetur adipiscing elit. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.\n\nAuctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.",
        style: Get.textTheme.subtitle1,
      ),
    ),
    SizedBox(
      key: const ValueKey(2),
      child: Text(
        "Auctor pulvinar nunc sed est et arcu. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nArcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem id purus purus, consectetur adipiscing elit. Auctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.\n\nAuctor pulvinar nunc sed est et arcu. Lorem id purus purus, velit arcu ut facilisis sit. Nulla vitae lorem mauris, venenatis orci, ac tempor non. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Arcu nibh suspendisse fermentum massa velit nunc. Auctor pulvinar nunc sed est et arcu.",
        style: Get.textTheme.subtitle1,
      ),
    ),
  ];

  void projectSlideshow(int value) {
    if (value == 3) {
      isProjectImagesLoop.value = true;
      Future.doWhile(() async {
        if (!isProjectImagesLoop.value) {
          return false;
        }
        await Future.delayed(const Duration(seconds: 5));
        if (!isProjectImagesLoop.value) {
          return false;
        }

        if (projectImagesController.page! >= 4) {
          projectImagesController.animateToPage(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        } else {
          projectImagesController.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        }

        return isProjectImagesLoop.value;
      });
    } else {
      isProjectImagesLoop.value = false;
    }
  }

  // Contact Us
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  Rx<bool> stackConnect = false.obs;

  // Footer
  Rx<Dino> dino = Dino().obs;
  Rx<double> runVelocity = initialVelocity.obs;
  Rx<double> runDistance = 0.0.obs;
  Rx<int> highScore = 0.obs;
  late AnimationController worldController;
  Rx<Duration> lastUpdateCall = const Duration().obs;
  RxList gameChildren = [].obs;
  RxList<Cactus> cacti = [Cactus(worldLocation: Offset(200.w, 0))].obs;
  RxList<Cactus> cacti2 = [Cactus(worldLocation: Offset(1000.w, 0))].obs;
  RxList<Ground> ground = [
    Ground(worldLocation: const Offset(0, 0)),
    Ground(worldLocation: Offset(groundSprite.imageWidth / 10, 0)),
  ].obs;
  RxList<Cloud> clouds = [
    Cloud(worldLocation: Offset(100.w, 20.h)),
    Cloud(worldLocation: Offset(300.w, 10.h)),
    Cloud(worldLocation: Offset(450.w, -10.h)),
    Cloud(worldLocation: Offset(600.w, 30.h)),
  ].obs;

  void newGame() {
    dino.value.dispY = 0;
    runVelocity.value = initialVelocity;
    // setState
    worldController.reset();
    cacti.value = [Cactus(worldLocation: Offset(200.w, 0))];
    cacti2.value = [Cactus(worldLocation: Offset(1000.w, 0))];

    ground.value = [
      Ground(worldLocation: const Offset(0, 0)),
      Ground(worldLocation: Offset(groundSprite.imageWidth / 10, 0))
    ];

    clouds.value = [
      Cloud(worldLocation: Offset(100.w, 20.h)),
      Cloud(worldLocation: Offset(300.w, 10.h)),
      Cloud(worldLocation: Offset(450.w, -10.h)),
      Cloud(worldLocation: Offset(600.w, 30.h)),
    ];
    highScore.value = max(highScore.value, runDistance.value.toInt());
    GetStorage("ecode").write("high score", highScore.value);
    runDistance.value = 0;
    runVelocity.value = initialVelocity;
    dino.value.state = DinoState.running;
    addGameObject();
    worldController.forward();
  }

  void gameOver() {
    if (runDistance.value != 0) {
      highScore.value = max(highScore.value, runDistance.value.toInt());
      GetStorage("ecode").write("high score", highScore.value);
    }
    worldController.stop();
    dino.value.die();
  }

  updateGame() {
    try {
      double elapsedTimeSeconds;
      dino.value.update(lastUpdateCall.value, worldController.lastElapsedDuration);
      try {
        elapsedTimeSeconds = (worldController.lastElapsedDuration! - lastUpdateCall.value).inMilliseconds / 1000;
      } catch (_) {
        elapsedTimeSeconds = 0;
      }

      runDistance.value += runVelocity.value * elapsedTimeSeconds;
      if (runDistance.value < 0) runDistance.value = 0;
      runVelocity.value += acceleration * elapsedTimeSeconds;

      Rect dinoRect = dino.value.getRect(Get.size, runDistance.value);
      for (Cactus cactus in cacti) {
        Rect obstacleRect = cactus.getRect(Get.size, runDistance.value);
        if (dinoRect.overlaps(obstacleRect.deflate(20))) {
          gameOver();
        }

        if (obstacleRect.right < 0) {
          // setState(() {
          cacti.remove(cactus);
          cacti.add(Cactus(worldLocation: Offset(runDistance.value + 150.w + Random().nextInt(100).w, 0)));
          addGameObject();
          // });
        }
      }

      for (Cactus cactus in cacti2) {
        Rect obstacleRect = cactus.getRect(Get.size, runDistance.value);
        if (dinoRect.overlaps(obstacleRect.deflate(20))) {
          gameOver();
        }

        if (obstacleRect.right < 0) {
          // setState(() {
          cacti2.remove(cactus);
          cacti2.add(Cactus(worldLocation: Offset(runDistance.value + 300.w + Random().nextInt(100).w, 0)));
          addGameObject();
          // });
        }
      }

      for (Ground groundlet in ground) {
        if (groundlet.getRect(Get.size, runDistance.value).right < 0) {
          // setState(() {
          ground.remove(groundlet);
          ground.add(
            Ground(
              worldLocation: Offset(
                ground.last.worldLocation.dx + groundSprite.imageWidth / 10,
                0,
              ),
            ),
          );
          addGameObject();
          // });
        }
      }

      for (Cloud cloud in clouds) {
        if (cloud.getRect(Get.size, runDistance.value).right < 0) {
          // setState(() {
          clouds.remove(cloud);
          clouds.add(
            Cloud(
              worldLocation: Offset(
                clouds.last.worldLocation.dx + Random().nextInt(50).w + 300.w,
                Random().nextInt(40).h - 20.h,
              ),
            ),
          );
          addGameObject();
          // });
        }
      }

      lastUpdateCall.value = worldController.lastElapsedDuration!;
    } catch (e) {
      //
    }
  }

  void addGameObject() {
    gameChildren.clear();
    for (GameObject object in [...clouds, ...ground, ...cacti, ...cacti2, dino.value]) {
      gameChildren.add(
        AnimatedBuilder(
          animation: worldController,
          builder: (context, _) {
            Rect objectRect = object.getRect(Get.size, runDistance.value);
            return Positioned(
              left: objectRect.left,
              top: objectRect.top,
              width: objectRect.width,
              height: objectRect.height,
              child: object.render(),
            );
          },
        ),
      );
    }
  }

  void jump() async {
    if (dino.value.state != DinoState.dead) {
      dino.value.jump();
    }
    if (dino.value.state == DinoState.dead) {
      await Future.delayed(const Duration(milliseconds: 500));
      newGame();
    }
  }

  @override
  void onInit() {
    if (GetStorage("ecode").read("high score") != null) {
      highScore.value = GetStorage("ecode").read("high score");
    } else {
      GetStorage("ecode").write("high score", 0);
    }
    worldController = AnimationController(vsync: this, duration: const Duration(days: 1));
    worldController.addListener(updateGame);
    gameOver();
    super.onInit();
  }

  @override
  void dispose() {
    coastController.dispose();
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
    super.dispose();
  }
}
