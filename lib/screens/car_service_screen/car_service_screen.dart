import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/app_bar.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_divider.dart';
import '../../componant/custom_image.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../../services/services/services_services.dart';
import '../controller.dart';
import 'controller/car_services_controller.dart';

class CarsServiceScreen extends StatelessWidget {
  final controller = Get.put(CarServicesController());
  // final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(text: 'خدمات السياره',),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CustomImage(text: '', isLoginScreen: false)),
          Positioned(
            top: 130,
            right: 20,
            left: 20,
            child: SingleChildScrollView(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => Expanded(
                            child: Container(
                              height: 60.h,
                               padding: EdgeInsets.all(2),
                               decoration: K.boxDecoration,
                               child: ElevatedButton(
                                onPressed: () async {
                                  final date = await controller.showCalender(
                                      context: context);
                                  if (date == null) return;
                                  controller.newTime.value = date;
                                  print(controller.dateTime.value);
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(
                                      K.whiteColor),
                                ),
                                child: controller.newTime.value == null
                                    ? Image.asset('assets/images/calender.png',
                                        height: 25, color: K.mainColor)
                                    : Text(
                                        "${controller.newTime.value?.year}/${controller.newTime.value?.month}/${controller.newTime.value?.day}",style: TextStyle(color: K.blackColor),),
                              ),
                            ),
                          ),
                        ),
                        K.sizedBoxW,
                        Obx(() => Expanded(
                            child: Container(
                              height: 60.h,
                              padding: EdgeInsets.all(2),
                              decoration: K.boxDecoration,
                              child: ElevatedButton(
                                onPressed: () async {
                                 final timeSelected=await controller.showTime(context: context);
                                  if (timeSelected == null) return;
                                  controller.newTimeByHours.value = timeSelected;
                                  print(controller.time.value);
                                },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(K.whiteColor),
                                ),
                                child: controller.newTimeByHours.value == null
                                    ? Image.asset('assets/images/alarm.png',
                                    height: 30, color: K.mainColor)
                                    : Text(
                                  "${controller.newTimeByHours.value!.hour}/${controller.newTimeByHours.value?.minute} ",style: TextStyle(color: K.blackColor),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'خدمات رئيسيه',
                      style:K.textStyle24,
                    ),
                    Obx(
                      () =>controller.isLoading.value?Center(child: CircularProgressIndicator(),):
                      servicesCostRadioRow(
                        controller: controller,
                        serviceName:controller.servicesModel.response![0].name.toString() ,
                        // serviceName: 'غسيل عام',
                        serviceCost: '50',
                        radioValue: 'عام',
                        groupValue: controller.selectedValue1.value,
                        onChange: (String? v) {
                          controller.isTappedFunc1(v);
                        },
                      )
                    ),
                    Text(
                      'خدمات اضافيه',
                      style:K.textStyle24,
                    ),
                    Obx(() => servicesCostRadioRow(
                        controller: controller,
                        serviceName: ' فواحه عطريه',
                        serviceCost: '10',
                        radioValue: 'اضافي',
                        groupValue: controller.selectedValue2.value,
                        onChange: (String? v) {
                          controller.isTappedFunc2(v);
                        },
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'المبلغ الاجمالي',
                          style:K.textStyle16,
                        ),
                        Text(
                          '90 رس',
                          style:K.textStyle16,

                        ),
                      ],
                    ),
                    SizedBox(height: 13.h,),
                    CustomDivider(),
                    SizedBox(
                      height: 13.h,
                    ),
                    InkWell(
                      onTap: ()async {
                        await controller.onBasicWaitingAlertPressed(
                          context,
                          widgetContent: Container(
                            height: 200,
                            child: Center(
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                children: [
                                  Text('فواحه عطريه',style:K.textStyle24,),
                                  K.sizedBoxH,

                                  SizedBox(
                                    width: K.width,
                                     child: Text(textDirection:TextDirection.rtl,
                                        style:TextStyle(
                                      fontSize: 14.sp,color: K.mainColor
                                    ), 'هنا يتم وصف المنتج هنا يتم وصف المنتج هنا يتم وصف المنتجهنا يتم وصف المنتجهنا يتم وصف المنتج'),

                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: Text(
                        ' اضافه ملاحظات ⚠️ ' ,
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.red,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                        width: K.width,
                        child: CustomTextField(
                          icon: Icon(null),
                          isPassword: false,
                          isNotes: true,
                          height: 106,
                        )),
                    SizedBox(
                      height: 13.h,
                    ),
                    Button(
                      size: K.width,
                      text: 'استمرار ',
                      isLoggin: true,
                      onPressed: () {
                        // Get.toNamed(AppRoutes.servicesApproveScreen);
                        controller.getServices() ;
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class servicesCostRadioRow extends StatelessWidget {
  const servicesCostRadioRow({
    Key? key,
    required this.controller,
    required this.serviceName,
    required this.serviceCost,
    required this.radioValue,
    required this.groupValue,
    required this.onChange,
  }) : super(key: key);

  final CarServicesController controller;
  final String serviceName;
  final String serviceCost;
  final String radioValue;
  final String groupValue;
  final Function(String? v) onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      decoration: BoxDecoration(
          color: K.whiteColor, borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.symmetric(vertical: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            serviceName,
            style:K.textStyle16,
          ),
          Text(
            '$serviceCostرس ',
            style:K.textStyle16,

          ),
          Radio(
              value: radioValue,
              activeColor: K.mainColor,
              groupValue: groupValue,
              onChanged: onChange),
        ],
      ),
    );
  }
}
