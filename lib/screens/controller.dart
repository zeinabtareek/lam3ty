import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../componant/cars_card.dart';
import '../componant/custom_divider.dart';

class HomePageController extends GetxController{
  // late   Widget widgetContent;
  onBasicWaitingAlertPressed(context, {required Widget widgetContent}) async {
    // ReservationController controller =Get.put(ReservationController());
    await Alert(
      context: context,
      style: const AlertStyle(
        animationType: AnimationType.fromTop,
        isCloseButton: false,
        isButtonVisible: false,
        descStyle: TextStyle(fontWeight: FontWeight.bold),
        animationDuration: Duration(milliseconds: 400),
        constraints: BoxConstraints.expand(width: 300),
        overlayColor: Color(0x55000000),
        alertElevation: 0,
      ),
      content:widgetContent).show();
  }


}