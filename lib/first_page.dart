import 'package:flutter/material.dart';
import 'package:flutter_applllll/custom_image.dart';
import 'package:flutter_applllll/login.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  int numOfLoad = 0;
  var delay = Duration(seconds: 3);
  @override
  void initState() {
    Future.delayed(delay, () {
      Get.off(() => LoginPage());
    });
    controller =
        AnimationController(vsync: this, duration: delay);
    animation = IntTween(begin: 1, end: 4).animate(controller);
    controller.forward();

    animation.addListener(() {
      setState(() {
        numOfLoad = animation.value;
        print(numOfLoad);
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 11.h, left: 11.w),
                child: CustomPngImage(
                  imageName: 'Image2',
                  width: 144.w,
                  height: 60.h,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 147.h,
          ),
          Text(
            'Backup System',
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              color: const Color(0xff000000),
              letterSpacing: -0.48,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 70.h,
          ),
          CustomPngImage(
            imageName: 'image3',
            width: 109.w,
            height: 109.h,
          ),
          SizedBox(
            height: 28.h,
          ),
          Container(
            height: 36.h,
            width: 158.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18.0),
              border: Border.all(width: 1.0, color: const Color(0xff000000)),
            ),
            child: AnimatedBuilder(
              animation: controller,
              builder: (context, child) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    numOfLoad,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4.w),
                      child: CustomSvgImage(
                        imageName: 'loading',
                        height: 22.w,
                        width: 24.3.w,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          Spacer(),
          Stack(
            clipBehavior: Clip.none,
            children: [
              SvgPicture.string(
                '<svg viewBox="0.0 842.7 428.0 83.3" ><path transform="translate(0.0, 704.2)" d="M 428 155.7360534667969 L 428 221.7973937988281 L 0 221.7973937988281 L 0 138.4600067138672 C 74.94459533691406 154.3260955810547 234.4043121337891 178.9583892822266 428 155.7360534667969 Z" fill="#171314" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>',
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
              Positioned(
                right:-29.5.w,
                bottom: 28.h,
                child: CustomPngImage(
                  imageName: 'image1',
                  width: 671.51.w,
                  height: 301.06.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
