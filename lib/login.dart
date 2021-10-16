import 'package:flutter/material.dart';
import 'package:flutter_applllll/custom_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 11.h, left: 11.w),
            child: CustomPngImage(
              imageName: 'Image2',
              width: 144.w,
              height: 60.h,
            ),
          ),
          SizedBox(
            height: 54.4.h,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                height: 90.57.h,
                width: 90.57.h,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xffDD2937), width: 5.w)),
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5.w,right: 5.w,bottom: 5.h),
                child: CustomSvgImage(
                  imageName: 'user',
               height: 100.h,

                  width: 100.w,
                )),
          ),
          SizedBox(
            height: 65.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 54.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Logg inn',
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
                  height: 10.h,
                ),
                Container(
                  height: 4.h,
                  width: 87.w,
                  decoration: BoxDecoration(
                    color: const Color(0xffdd2937),
                  ),
                ),
                SizedBox(height: 42.h,),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: 'Brukernavn',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: const Color(0x3e000000),
                      letterSpacing: -0.36,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(17.r),
                        child: CustomSvgImage(
                          imageName: 'user',
                          height: 20.92.h,
color:Color(0xffEBEBEB),
                          width: 23.06.w,
                        )),
                    contentPadding: EdgeInsets.only(
                      right: 17.w,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.r),
                      borderSide: BorderSide(
                        color: Color(0xffEBEBEB),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.r),
                      borderSide: BorderSide(
                        color: Color(0xffEBEBEB),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.r),
                      borderSide: BorderSide(
                        color: Color(0xffEBEBEB),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    hintText: 'Passord',
                    hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: const Color(0x3e000000),
                      letterSpacing: -0.36,
                      fontWeight: FontWeight.w500,
                    ),
                    prefixIcon: Padding(
                        padding: EdgeInsets.all(17.r),
                        child: Icon(
                          Icons.lock_outline,
                                color: Color(0xffEBEBEB),
                        )),
                    contentPadding: EdgeInsets.only(
                      right: 17.w,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.r),
                      borderSide: BorderSide(
                        color: Color(0xffEBEBEB),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.r),
                      borderSide: BorderSide(
                        color: Color(0xffEBEBEB),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60.r),
                      borderSide: BorderSide(
                        color: Color(0xffEBEBEB),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15.h,),
                Align(
                 alignment: Alignment.centerRight,
                  child: Container(
                    height: 60.h,width: 172.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: const Color(0xffdd2937),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Logg inn',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 24,
                            color: const Color(0xffffffff),
                            letterSpacing: -0.48,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 10.w,),
                     CustomSvgImage(
                       imageName: 'fast-forward-double-right-arrows-symbol',
                     )
                      ],
                    ),
                  ),
                )
              ],
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
                right: -29.5.w,
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
