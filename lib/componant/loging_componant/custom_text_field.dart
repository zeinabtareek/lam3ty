import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constant.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final Function(String value)? onChanged;
  final String? errorLabel;
  final TextInputType? type;
  final TextEditingController? controller;
  final Function()? onTap;
  final bool? isPassword;
  final Color? errorColor;
  final Color? color;
  final Widget icon;

  CustomTextField(
      {this.label,
      this.onChanged,
      this.errorLabel,
      this.type,
      this.controller,
      this.onTap,
      this.isPassword,
      this.errorColor,
      this.color,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 0.0.h),
        height: 60.h,
        width: double.infinity,
        decoration: getBoxShadow(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  keyboardType: type,
                  textCapitalization: TextCapitalization.words,
                  cursorColor: K.mainColor,
                  style: TextStyle(color: K.mainColor),
                  decoration: getInoutDecoration(
                    label,
                    IconButton(
                      icon: icon,
                      color: K.whiteColor,
                      onPressed: onTap,
                    ),
                  ),
                  onChanged: (value) {
                    print(value);
                  },
                  obscureText: isPassword ?? true,
                ),
              ),
            ]));
  }

  getBoxShadow() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: K.secmainColor.withOpacity(.7),
        border: Border.all(color: K.borderColor.withOpacity(1)));
  }

  getInoutDecoration(hint, icon) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
      contentPadding: EdgeInsets.only(left: 15.0.w, top: 0.0, bottom: 20.h),
    );
  }
}
