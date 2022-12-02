import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(LoginController());
    return Scaffold(
        backgroundColor: K.whiteColor,
        body: Column(
          children: [
            CustomImage(text: 'تسجيل الدخول ', isLoginScreen: true, ),
            K.sizedBoxH,
            LoginLabel(
              text: 'البريد الالكتروني',
            ),
            CustomTextField(
              icon: Icon(Icons.supervisor_account_rounded),
              isPassword: false,
            ),
            LoginLabel(
              text: 'كلمه المرور',
            ),
            CustomTextField(
              icon: Icon(Icons.password_outlined),
              isPassword: true,
            ),
            K.sizedBoxH,
            Button(size: K.width,
              text: 'دخول ',
              isLoggin: true,
              onPressed: () {
                Get.offNamed(AppRoutes.homeNave);
              },
            ),
            const Spacer(),
            FixedRichText(
              key: key,
              leftLabel: "ليس لديك حساب ؟",
              rightLabel: "حساب جديد ",
              onTab: () {
                Get.offNamed(AppRoutes.registerScreen);
              },
            ),
            K.sizedBoxH,
          ],
        ),
        );
  }
}
