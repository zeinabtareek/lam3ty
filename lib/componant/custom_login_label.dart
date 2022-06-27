import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class LoginLabel extends StatelessWidget {
  String ?text;
  final IconData? icon;
    LoginLabel({
    this.text,
    this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text('\n $text',
          textDirection: TextDirection.rtl,
          style:   TextStyle(color:K.blackColor ,
              fontSize: 20.sp, fontWeight: FontWeight.normal, height: .5),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0,bottom: 10.0),
          child: Icon(icon,color: K.mainColor,size: 25,),
        ),
      ],
    );
  }
}
