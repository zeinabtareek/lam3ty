import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  String text;
  MyAppBar({required this.text});
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(100),
      child: Column(
        children: [
          SizedBox(height: 20,),
          AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(onPressed: (){
              Get.back();
            }, icon: Icon(Icons.arrow_back,color: K.blackColor,size: 25,)),
            actions:   [
              Text(text,style: TextStyle(color: K.mainColor,fontSize: 25,fontWeight: FontWeight.bold),),
              K.sizedBoxW,
            ],

          ),
        ],
      ),
    );
  }
}