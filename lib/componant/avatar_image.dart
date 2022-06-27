import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class LargeAvatarWithButton extends StatelessWidget {
  final Widget? image;
  final Function()? onPressed;

  const LargeAvatarWithButton({Key? key, this.image, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child:
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    color: Colors.black12.withAlpha(25),
                    spreadRadius: .09,
                    offset: const Offset(2, 1),
                  )
                ],
              ),
              clipBehavior: Clip.antiAlias,
              width: 70,
              height: 70,
              child: image),


    );
  }
}
