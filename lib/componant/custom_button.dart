import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class Button extends StatelessWidget {
 final String text;
  final double size;
  final bool ? isLoggin;
   final VoidCallback ?onPressed;

 const Button({
    required this.text,
    required this.size,
      this.onPressed,
    this.isLoggin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: K.width,
      margin:  EdgeInsets.symmetric
        (horizontal: 27.0.w ,vertical: 2.0.h) ,
      color:Colors.transparent,

      child:
      RaisedButton(
        onPressed:  onPressed,
        padding:const EdgeInsets.all(0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        color: isLoggin==true?K.mainColor:K.whiteColor,
        child: Ink(
          child: Container(
            width: size,
            height: 60.h,
             alignment: Alignment.center,
            child:   Text(
              text,
              textAlign: TextAlign.center,
              style:   TextStyle(fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                color:isLoggin==true?K.whiteColor:K.mainColor,
              ),
            ),
          ),
        ),
      ),);
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../constant.dart';
//
// class Button extends StatelessWidget {
//   final String text;
//   final double size;
//   final bool ? isLoggin;
//   final VoidCallback ?onPressed;
//
//   const Button({
//     required this.text,
//     required this.size,
//     this.onPressed,
//     this.isLoggin,
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: K.width,
//       margin:   EdgeInsets.symmetric
//         (horizontal: 27.0.w ,vertical: 2.0.h),
//       child:
//       RaisedButton(
//         onPressed:  onPressed,
//         padding:const EdgeInsets.all(0),
//         // shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(70.0)),
//         child: Ink(
//           child: Container(
//             width: size,
//             height: 60.h,
//             color: isLoggin==true?K.mainColor:K.whiteColor,
//             alignment: Alignment.center,
//             child:   Text(
//               text,
//               textAlign: TextAlign.center,
//               style:   TextStyle(fontSize: 25.sp,
//                 fontWeight: FontWeight.bold,
//                 color:isLoggin==true?K.whiteColor:K.mainColor,
//               ),
//             ),
//           ),
//         ),
//       ),);
//   }
// }
