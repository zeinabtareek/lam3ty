import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarServicesController extends GetxController{
  final selectedValue1=''.obs;
  final selectedValue2=''.obs;
  final list =[].obs;
  Rx<DateTime> dateTime = DateTime.now().obs;
  Rxn<DateTime> newTime = Rxn<DateTime>();
  Rx<TimeOfDay> time = TimeOfDay.now().obs;
  Rxn<TimeOfDay> newTimeByHours = Rxn<TimeOfDay>();


  isTappedFunc1(var v ){
  selectedValue1.value=v;
     update();
   } isTappedFunc2(var v ){
    selectedValue2.value=v;
     update();
  }
  Future<DateTime?> showCalender({required BuildContext context})async=>
      await showDatePicker(
  context: context,
  lastDate: DateTime(2100),
  firstDate: DateTime(2000),
  initialDate: dateTime.value,
  ) ;
  Future<TimeOfDay?> showTime({required BuildContext context})async=>
      await showTimePicker(
          context: context,
          initialTime: time.value
      );


}