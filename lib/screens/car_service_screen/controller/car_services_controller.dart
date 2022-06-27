import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../model/services_model.dart';
import '../../../services/services/services_services.dart';

class CarServicesController extends GetxController{
  final services=Services();
  final selectedValue1=''.obs;
  final selectedValue2=''.obs;
  var getServicesList = [].obs;
  final isLoading =true.obs;



  ServicesModel  servicesModel=ServicesModel();
  Rx<DateTime> dateTime = DateTime.now().obs;
  Rxn<DateTime> newTime = Rxn<DateTime>();
  Rx<TimeOfDay> time = TimeOfDay.now().obs;
  Rxn<TimeOfDay> newTimeByHours = Rxn<TimeOfDay>();


  @override
  void onInit() async{
    super.onInit();
    isLoading.value=true;
    await getServices();
    isLoading.value=false;

  }

  isTappedFunc1(var v ){
  selectedValue1.value=v;
     update();
   }
   isTappedFunc2(var v ){
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

  onBasicWaitingAlertPressed(context, {required Widget widgetContent}) async {
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


  getServices()async{
  servicesModel =await services.GetServices();
    print(servicesModel.responseCode);
  }


}