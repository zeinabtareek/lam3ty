import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class DisablePhoneButton extends StatelessWidget {
  const DisablePhoneButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(

      onPressed: () {},
      padding: const EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(75.0)),
      child: Ink(
        decoration: BoxDecoration(


            color: Colors.red,
            borderRadius: BorderRadius.circular(2.0)
        ),
        child: Container(
            width: 100.w,
            height: 60.h,
            // constraints: BoxConstraints(maxWidth: 280.0, minHeight: 52.0),
            alignment: Alignment.center,
            child:  Icon(Icons.phone_disabled_rounded,color: K.whiteColor,)
        ),
      ),
    );
  }
}