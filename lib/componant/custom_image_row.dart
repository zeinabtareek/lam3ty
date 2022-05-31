


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CustomImageRow extends StatelessWidget {
  String text;
  final Function()? onPressed;
    CustomImageRow({
    Key? key,
    required this.text,
    required this.onPressed,

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
              ),IconButton(onPressed: onPressed, icon:
              const Icon(Icons.arrow_forward),),
            ],
          ),
        ),
      ),
    );
  }
}
