import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lam3ty/componant/custom_button.dart';
import 'package:lam3ty/constant.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Utility {
   static     infoAlert(context) async {
     await Alert(
       context: context,
       style: const AlertStyle(
         animationType: AnimationType.fromTop,
         isCloseButton: false,
         isButtonVisible: false,
         descStyle: TextStyle(fontWeight: FontWeight.bold),
         animationDuration: Duration(milliseconds: 400),
         constraints: BoxConstraints.expand(width: 300),
         overlayColor: Color(0x55000000),
         alertElevation: 0,
       ),
       content: Directionality(
           textDirection: TextDirection.rtl,
           child: Column(
             children: [
               SizedBox(height: 47.h),
               SvgPicture.asset("assets/images/Group.svg"),
               SizedBox(height: 10.h),
               Text(
                 "شكرا لك\n تم تاكيد الحجز",
                 style: TextStyle(
                     fontSize: 24.sp,
                     color: K.mainColor,
                     fontWeight: FontWeight.bold,
                     height: 1.5),
                 textAlign: TextAlign.center,
               ),
               SizedBox(height: 10.h),
               SizedBox(
                 width: 152.w,
                 height: 60.h,
                 child: Button(
                   size: K.width,
                   text: 'تم',
                   isLoggin: true,
                   onPressed: () {},
                 ),
               ),
             ],
           )),
     ).show();
   }

}
