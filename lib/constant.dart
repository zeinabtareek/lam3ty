import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class K {

  static const mainColor = Color(0xFF0E40A3);
  static const secmainColor = Color(0xFFD9DDE8);
  static const borderColor = Color(0xFFBFCCEC);

  static const grayColor = Color(0xFF999999);
  static const blackColor = Colors.black;
  static const searchColor = Color(0xFF31323B);
  static const cardColor = Color(0xFF31323);
  static const whiteColor = Colors.white;
  static const hashtagColor = Color(0xFF515BD4);
  static const PosthashtagColor = Color(0xFF2FBBF0);
  static const splashScreenColor = Color(0xFF404040);
  static const splashStackColor = Color(0xFF595959);
  static const kBackGroundColor= Color(0xFF181818);
  static const KpostBackground= Color(0xff31323B);
  static const KFirstPostColor= Color(0xff404550);
  static const KPostTextColor= Color(0xff7A8FA6);
  static const like = Colors.red;
  static const splashTypingColor = Color(0xFFFDEE88);
  static final width = Get.width;
  static final height = Get.height;




  static SizedBox sizedBoxH = SizedBox(
    height: 40.h,
  );
  static SizedBox sizedBoxW = SizedBox(
    width: 22.w,
  );

  static int MobileBreakpoint = 576;
  static int TabletBreakpoint = 1024;
  static int DesktopBreakPoint = 1366;
  static const textStyleAlert = TextStyle(
      fontSize: 18.0,
      decoration: TextDecoration.none,
      decorationStyle: TextDecorationStyle.dashed,
      decorationColor: Color(0x00ffffff));
}
