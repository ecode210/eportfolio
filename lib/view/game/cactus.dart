import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio_update/view/game/game_constants.dart';
import 'package:portfolio_update/view/game/game_object.dart';
import 'package:portfolio_update/view/game/sprite.dart';

List<Sprite> cacti = [
  Sprite()
    ..imagePath = "assets/game/cacti/obstacle-01.png"
    ..imageWidth = 35.w.toInt()
    ..imageHeight = 60.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/cacti/obstacle-02.png"
    ..imageWidth = 25.w.toInt()
    ..imageHeight = 50.h.toInt(),
  Sprite()
    ..imagePath = "assets/game/cacti/obstacle-03.png"
    ..imageWidth = 30.w.toInt()
    ..imageHeight = 70.h.toInt(),
];

class Cactus extends GameObject {
  final Sprite sprite;
  final Offset worldLocation;

  Cactus({required this.worldLocation}) : sprite = cacti[Random().nextInt(cacti.length)];

  @override
  Rect getRect(Size screenSize, double runDistance) {
    return Rect.fromLTWH(
      (worldLocation.dx - runDistance) * worldToPixelRatio,
      270.h - sprite.imageHeight,
      sprite.imageWidth.toDouble(),
      sprite.imageHeight.toDouble(),
    );
  }

  @override
  Widget render() {
    return Image.asset(sprite.imagePath);
  }
}
