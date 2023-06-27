import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectImages extends StatelessWidget {
  const ProjectImages({
    Key? key,
    required this.index,
    required this.number,
    this.alignment = Alignment.topCenter,
  }) : super(key: key);
  final int index;
  final int number;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    String imagePath = "";
    switch (index) {
      case 0:
        imagePath = "assets/png/Parivest-0$number.png";
        break;
      case 1:
        imagePath = "assets/jpg/Betalife-0$number.jpg";
        break;
      case 2:
        imagePath = "assets/jpg/Helt-0$number.jpg";
        break;
      case 3:
        imagePath = "assets/jpg/Resup-0$number.jpeg";
        break;
      case 4:
        imagePath = "assets/jpg/Dilivar-0$number.jpg";
        break;
    }
    return Image(
      image: AssetImage(imagePath),
      height: 1024.h,
      fit: BoxFit.cover,
      alignment: alignment,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded == true) {
          return child;
        } else {
          return AnimatedSwitcher(
            duration: const Duration(seconds: 1),
            child: frame != null
                ? SizedBox(
                    width: 1440.w,
                    child: child,
                  )
                : 0.verticalSpace,
          );
        }
      },
    );
  }
}
