import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CallingRow extends StatelessWidget {
  const CallingRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Container(
            child:  Padding(
              padding: EdgeInsets.only
                (left: 5.0.w ,top:  3.0.h,bottom:  3.0.h),
              child: Icon(Icons.arrow_back_ios ,color: Colors.black,size: 21.sp,),),
            decoration: BoxDecoration(
                color: K.whiteColor,
                borderRadius: BorderRadius.circular(100)
            )
        ), Image.asset('assets/images/AddContact.png' ,),
      ],
    );
  }
}
