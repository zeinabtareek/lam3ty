import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/cars_card.dart';
import '../../constant.dart';
import 'controller/cars_controller.dart';

class CarsScreen extends StatelessWidget {
    CarsScreen({Key? key}) : super(key: key);
CarsScreenController controller=Get.put(CarsScreenController());
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Wrap(
        children: [
          K.sizedBoxH,
      //     ListView.builder(
      //         physics: ClampingScrollPhysics(),
      //         itemCount:2,
      //         shrinkWrap: true,
      //         padding: EdgeInsets.zero,
      //         itemBuilder: (ctx, index) =>
      //           //   CarsCard(
      //           // carType: '',
      //           // image: '',
      //           // carColor: controller.carColor,
      //           // carModel: '',)),
        ],
      ),
    );
  }
}

