import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constant.dart';




class LoginCustomText extends StatelessWidget {
    LoginCustomText({
    required this.text,
    required this.size,
    required this.loginScreen,
    Key? key,
  }) : super(key: key);

  String   text  ;
  double  ? size  ;
  bool  ? loginScreen  ;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: 20.h, bottom: 5.0.h),
      width: K.width,
      child: Center(
        child:
        Text(text,
          style:   TextStyle(
            fontSize: size!.sp,
            color: loginScreen==true?K.mainColor:K.whiteColor,
            fontWeight: FontWeight.bold,
          ),
          // overflow: TextOverflow.ellipsis,
        ),
      )
    );
  }
}
