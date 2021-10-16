import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
 import 'package:get/get.dart';

class CustomPngImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final Color color;
  final BoxFit fit;

  CustomPngImage(
      {this.imageName, this.height, this.width, this.color, this.fit});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$imageName.png',
      height: height ?? 30.h,
      width: width ?? 30.w,
      fit: fit ?? BoxFit.fill,
      color: color,
    );
  }
}

class CustomSvgImage extends StatelessWidget {
  final String imageName;
  final double height;
  final double width;
  final Color color;

  CustomSvgImage({
    this.imageName,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/svg/$imageName.svg',
       height: height ?? 24.h,
      width: width ?? 24.w,
      fit: BoxFit.contain,
      color: color,
    );
  }
}

class CustomLogo extends StatelessWidget {
  final double height;
  final double width;

  CustomLogo({this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "logo",
      child: CustomPngImage(
        imageName: "logo",
        width: width ?? 127.w,
        height: height ?? 160.h,
        fit: BoxFit.contain,
      ),
    );
  }
}

class BackGroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return    CustomPngImage(
      width: Get.width,
      height: Get.height,
      imageName: 'backGround',
    );
  }
}
