import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_update/view/game/game_constants.dart';
import 'package:portfolio_update/view/game/game_object.dart';
import 'package:portfolio_update/view/game/sprite.dart';

List<Sprite> dino = [
  Sprite()
    ..imagePath = "assets/game/dash/dash_1.png"
    ..imageWidth = 88.w.toInt()
    ..imageHeight = 60.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/dash/dash_2.png"
    ..imageWidth = 88.w.toInt()
    ..imageHeight = 60.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/dash/dash_3.png"
    ..imageWidth = 88.w.toInt()
    ..imageHeight = 60.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/dash/dash_4.png"
    ..imageWidth = 88.w.toInt()
    ..imageHeight = 60.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/dash/dash_5.png"
    ..imageWidth = 88.w.toInt()
    ..imageHeight = 60.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/dash/dash_6.png"
    ..imageWidth = 88.w.toInt()
    ..imageHeight = 60.h.toInt(),
];

enum DinoState {
  jumping,
  running,
  dead,
}

class Dino extends GameObject {
  Sprite currentSprite = dino[0];
  double dispY = 0;
  double velY = 0;
  DinoState state = DinoState.running;

  @override
  Widget render() {
    return Image.asset(currentSprite.imagePath);
  }

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      screenSize.width / 10,
      270.h - currentSprite.imageHeight - dispY,
      currentSprite.imageWidth.toDouble(),
      currentSprite.imageHeight.toDouble(),
    );
  }

  @override
  void update(Duration lastUpdate, Duration? elapsedTime) {
    double elapsedTimeSeconds;
    try {
      currentSprite = dino[(elapsedTime!.inMilliseconds / 100).floor() % 2 + 2];
    } catch (_) {
      currentSprite = dino[0];
    }
    try {
      elapsedTimeSeconds = (elapsedTime! - lastUpdate).inMilliseconds / 1000;
    } catch (_) {
      elapsedTimeSeconds = 0;
    }

    dispY += velY * elapsedTimeSeconds;
    if (dispY <= 0) {
      dispY = 0;
      velY = 0;
      state = DinoState.running;
    } else {
      velY -= gravity * elapsedTimeSeconds;
    }
  }

  void jump() {
    if (state != DinoState.jumping) {
      state = DinoState.jumping;
      velY = jumpVelocity;
    }
  }

  void die() {
    currentSprite = dino[5];
    state = DinoState.dead;
  }
}
