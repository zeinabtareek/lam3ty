 import 'package:get/get.dart';

import '../../../model/user_model.dart';
class RegisterController extends GetxController {
   final _email = ''.obs;
  String get email => _email.value;
  final _pass = ''.obs;
  String get pass => _pass.value;
 final genderSelected=''.obs;
 final agree=''.obs;

   List<String> allItems = [
     'الاسم',
     'البريد الالكتروني',
     'رقم الهاتف',
     '',
     'كلمه المرور',
     'تأكيد كلمه المرور',
     'موافق علي الشروط والاحكام',
   ];
  isTappedFunc(var v ){
    genderSelected.value=v;
     update();
   }
   isAgreed(var v ){
    agree.value=v;
    update();
   }

}
