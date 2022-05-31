


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class TimeWidget extends StatelessWidget {
  String date;
  String time;
  bool ?redColor;
    TimeWidget({
    required this.date,required this.time,this.redColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Directionality(
      textDirection: TextDirection.rtl,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Image.asset('assets/images/book.png',
              height: 14,
              color:  redColor!=true?K.blackColor: Color(0xFFE91919),),
          AutoSizeText(date,style:
          TextStyle(fontSize:  16.sp,
              color:redColor!=true?K.blackColor: Color(0xFFE91919),),
          ),
          Image.asset('assets/images/alerm.png',
              height: 14,
              color:  redColor!=true?K.blackColor:
               Color(0xFFE91919),
          ),
            AutoSizeText(time,
              style:  TextStyle(fontSize:  16.sp,
                color:redColor!=true?K.blackColor: Color(0xFFE91919),),
             ),
        ],
      ),
    );
  }
}
