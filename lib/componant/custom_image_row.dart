
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lam3ty/screens/home/home_screen.dart';
import 'package:lam3ty/screens/load_screen.dart';
import '../constants/constant.dart';

class CustomImageRow extends StatelessWidget {
  String text;
  Function() ?onPressed;
  Widget widget;
    CustomImageRow({
    Key? key,
    required this.text,
    required this.onPressed,
      required this.widget,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: K.width,
      height: 250.h,
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          // colorFilter:   ColorFilter.mode(K.mainColor , BlendMode.hardLight,),
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/vector_custom.jpeg',
          ),
        ),
      ),
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text,
                style: TextStyle(
                  fontSize: 25.sp,
                  color: K.mainColor,
                  fontWeight: FontWeight.bold,),
              ),
              widget,
              // IconButton( onPressed: (){Get.back();}, icon: Icon(Icons.arrow_forward,size: 35.sp,)),

            ],
          ),
        ),
      ),
    );
  }
}
