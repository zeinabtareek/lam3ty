import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class K {

  static const mainColor = Color(0xFF0E40A3);
  static const secmainColor = Color(0xFFD9DDE8);
  static const borderColor = Color(0xFFBFCCEC);
  static const sec = Color(0x24BB670E);

  static const grayColor = Color(0xFF999999);
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const TypeColor = Color(0xFF646464);
  static final width = Get.width;
  static final height = Get.height;

static final boxDecoration= BoxDecoration(
  border: Border.all(color: K.secmainColor,width: 2),
  borderRadius: BorderRadius.circular(10),
  );


  static TextStyle textStyle16 =  TextStyle(
    fontSize: 16.sp,
    // color: K.mainColor,
    fontWeight: FontWeight.w600,
    // color:
  );  static TextStyle textStyle24=  TextStyle(
    fontSize: 24.sp,
    color: K.blackColor,
    
    fontWeight: FontWeight.w600,
  );
  static SizedBox sizedBoxH = SizedBox(
    height: 40.h,
     // Icon(icon),
   
  );
  static SizedBox sizedBoxW = SizedBox(
    width: 22.w,
  );



}
