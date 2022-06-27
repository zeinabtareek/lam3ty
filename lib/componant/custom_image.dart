import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';
import 'loging_componant/login_custom_text.dart';

class CustomImage extends StatelessWidget {
  String text;
  String ?imageurl;
  bool? isLoginScreen;
  bool? isProfileScreen;

  CustomImage({
    Key? key,
    required this.text,
      this.imageurl,
    this.isLoginScreen,
    this.isProfileScreen,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: K.width,
      height: 250.h,
      child: Stack(
         children: [
          LoginCustomText(
                text: text,
                 size: 28,
                loginScreen: true,
              ),
          Positioned(
            right :0,
            left :0,
            bottom: isProfileScreen!=true? 40.h:3.h,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:isProfileScreen!=true? LoginCustomText(
                text: isLoginScreen == true ? 'مرحبا بك مجددا  !' : '',
                size: 22.sp,
                loginScreen: true,
              ) :isProfileScreen==true?
              Image.asset(imageurl.toString(),height: 150.h,width: 150.w,fit: BoxFit.contain,color: K.blackColor,)
            : Text('data')),
          ) ,
          Image(
            image: const AssetImage(
              'assets/images/Vector.png',
            ),
            width: K.width,
            fit: BoxFit.fill,
            height: 280.h,
            color: K.mainColor,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }
}
