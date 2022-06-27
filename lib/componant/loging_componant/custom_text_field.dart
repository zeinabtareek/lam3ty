import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constant.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final Function(String)? onchange;
  final String? errorLabel;
  final TextInputType? type;
  final TextEditingController? controller;
  final Function()? onTap;
  final bool? isPassword;
  final bool? isNotes;
  final Color? errorColor;
  final Color? color;
  final double? height;
  final Widget icon;
  final   List<TextInputFormatter>?inputFormatters;


  CustomTextField(
      {this.label,
        this.onchange,
      this.errorLabel,
      this.type,
      this.controller,
      this.onTap,
      this.isPassword,
      this.errorColor,
      this.color,
      required this.icon,this.height,this.isNotes, this.inputFormatters
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: isNotes==true?0.0.w:20.0.w, vertical: 0.0.h),
        height: isNotes==true?height:60.h,
        width: double.infinity,
        decoration: getBoxShadow(),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextFormField(
                  onChanged: onchange,
                  keyboardType: type,
                  inputFormatters: inputFormatters,
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
                  obscureText: isPassword ?? true,
                ),
              ),
            ],
        ),
    );
  }

  getBoxShadow() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: isNotes==true?K.whiteColor:K.secmainColor.withOpacity(.7),
        border: Border.all(color: K.borderColor.withOpacity(1)));
  }

  getInoutDecoration(hint, icon) {
    return InputDecoration(
      enabledBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: const UnderlineInputBorder(borderSide: BorderSide.none),
      contentPadding: EdgeInsets.only(left: 15.0.w, top: 0.0, bottom: 10.h),
    );
  }
}
