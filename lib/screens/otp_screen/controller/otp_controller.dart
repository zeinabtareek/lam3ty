import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:lam3ty/screens/car_service_screen/car_service_screen.dart';
import 'package:lam3ty/services/auth/otp/otp_services.dart';

class OtpController extends GetxController{
  final services=OTPServices();
  final TextEditingController fieldOne = TextEditingController();
  final TextEditingController fieldTwo = TextEditingController();
  final TextEditingController fieldThree = TextEditingController();
  final TextEditingController fieldFour = TextEditingController();
  final otp=''.obs;
  final phone = ''.obs;

  @override
  void onInit() {
    otpVerfication();
  }
  otpVerfication()async{
    await services.OtpVerfication(phone.value, otp.value);
  }





}