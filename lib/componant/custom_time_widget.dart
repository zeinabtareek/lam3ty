


import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class TimeWidget extends StatelessWidget {
  String date;
  String time;
    TimeWidget({
    required this.date,required this.time,
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
              color:  K.blackColor),
          AutoSizeText(date,style: TextStyle(fontSize: 16.sp),),
          Image.asset('assets/images/alerm.png',
              height: 14,
              color:  K.blackColor),
            AutoSizeText(time),
        ],
      ),
    );
  }
}
