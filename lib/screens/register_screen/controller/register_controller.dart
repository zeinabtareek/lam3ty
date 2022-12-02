import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../constants/constant.dart';
import '../../../model/user_model.dart';
import '../../otp_screen/otp_screen.dart';

class RegisterController extends GetxController {
  final _email=''.obs;
  final _name=''.obs;
  final _pass =''.obs;
  final _mobile =  ''.obs;
  final _Confirmpass = ''.obs;

  String get email=>_email.value;
  String get name=>_name.value;

  String get pass => _pass.value;

  String get mobile=>_mobile.value;
  String get Confirmpass => _Confirmpass.value;

  final genderSelected = ''.obs;

  final agree = ''.obs;

  List<String> allItems = [
    'الاسم',
    'البريد الالكتروني',
    'رقم الهاتف',
    '',
    'كلمه المرور',
    'تأكيد كلمه المرور',
    'موافق علي الشروط والاحكام',
  ];

  isTappedFunc(var v) {
    genderSelected.value = v;
    update();
  }

  isAgreed(var v) {
    agree.value = v;
    update();
  }
  validName(String name) {
    _name.value = name;
  }
  validmobile(String mobile) {
    _mobile.value = mobile;
  }
  validEmail(String email) {
    _email.value = email;
  }validPass(String password) {
    _pass.value = password;
  }validConfirmPass(String Confirmp) {
    _Confirmpass.value = Confirmp;
  }


  validateForm() {
    try {
      if ( name.length < 3) {
        Fluttertoast.showToast(
            msg: "Name must be atleast 3 Characters",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: K.mainColor,
            textColor: K.whiteColor,
            fontSize: 12.0);
      }
      else if (!email.contains('@')) {
        Fluttertoast.showToast(
            msg: "Email address is not valid",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: K.mainColor,
            textColor: K.whiteColor,
            fontSize: 12.0);
      }
      else if (mobile.isEmpty   ) {
        Fluttertoast.showToast(
            msg: "Phone Number is mandatory",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: K.mainColor,
            textColor: K.whiteColor,
            fontSize: 12.0);
      }
      else if(genderSelected.isEmpty ){
        Get.snackbar('Error', 'you should select a gender',
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 2),colorText: Colors.red);
      }
      else if (pass.isEmpty) {
        Fluttertoast.showToast(
            msg: "Password must be atleast 6 Characters",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: K.mainColor,
            textColor: K.whiteColor,
            fontSize: 12.0);}
       else if(Confirmpass != pass){
         Fluttertoast.showToast(
            msg: "You've entered a wrong password",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 3,
            backgroundColor: K.mainColor,
            textColor: K.whiteColor,
            fontSize: 12.0);}

      else if(agree.isEmpty){
        Get.snackbar('Error', 'you should accept the  terms and conditions ',
            snackPosition: SnackPosition.BOTTOM,
            duration: Duration(seconds: 2),colorText: Colors.black);
      }
      else {
        Fluttertoast.showToast(msg: 'yor email has been created');
        register();
      }
    } catch (on) {
      printError(info: 'error');
    }
  }
  register() async {
    // services.register(email.trim(), password.trim(),name.trim(),mobile.trim());
    Get.to(OtpScreen(phoneNo: mobile,));
  }

  logout(){
    // services.signOut();
  }

}
