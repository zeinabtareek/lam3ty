import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';

class FixedListTile extends StatelessWidget {
  const FixedListTile({
    Key? key,
    this.onTap,
    this.iconLeading,
    this.subTitle = '',
    this.title,
  }) : super(key: key);
  final String? title;
  final String? subTitle;
  final IconData? iconLeading;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(

        onTap: onTap,
        leading:
        Icon(
          iconLeading,
          color: K.grayColor,
          size: 35.sp,
        ),
        title: AutoSizeText(
          title!,
          style: TextStyle(
            fontSize: 22.sp,
            color: K.TypeColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      );
  }
}
