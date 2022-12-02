
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final double height;
  final double width;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus,this.height,this.width ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [],
        controller: controller,
        maxLength: 1,
        cursorColor:K.mainColor,
        decoration:   InputDecoration(
            border: OutlineInputBorder(),
            enabledBorder: OutlineInputBorder(
              borderSide:   BorderSide(color: K.mainColor.withOpacity(.2), width: 2.0),),
            focusedBorder:   const OutlineInputBorder(
              borderSide:  BorderSide(color:K.secmainColor ),),
            counterText: '',
            hintStyle: TextStyle(color: K.secmainColor, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}