import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/custom_button.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import 'controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: K.whiteColor,
      body: Stack(
        children: [
          Positioned(
            top: 0.h,
            // bottom:-3 ,
            child: Image(
              image: const AssetImage(
                'assets/images/Vector.png',
              ),
              width: K.width,
              fit: BoxFit.fill,
              height: 280.h,
              color: K.mainColor,
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned(
            top: 100.h,
            // top: 600,
            child: Container(
              width: K.width,
              height: 350.h,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LoginCustomText(
                          text: 'تسجيل الدخول ',
                          size: 28,
                          loginScreen: true,
                        ),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: LoginCustomText(
                            text: 'مرحبا بك مجددا  !',
                            size: 25.sp,
                            loginScreen: true,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 300.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LoginLabel(
                    text: 'البريد الالكتروني',
                  ),
                  CustomTextField(
                    icon: Icon(Icons.supervisor_account_rounded),
                      isPassword:false,
                  ),
                  LoginLabel(
                    text: 'كلمه المرور',
                  ),
                  CustomTextField(
                    icon: Icon(Icons.password_outlined),
                    isPassword: true,
                  ),
                  K.sizedBoxH,
                  Button(
                    size: K.width,
                    text: 'دخول ',
                    isLoggin: true,
                    onPressed: () {
                      Get.offAll(LoginScreen());
                    },
                  ),
                ],
              )),
          Positioned(
              bottom: 20.h,
              right: 0,
              left: 2,
              child: Center(
                child: FixedRichText(
                  key: key,
                  leftLabel: "ليس لديك حساب ؟",
                  rightLabel: "حساب جديد ",
                  onTab: () {
                    Get.toNamed(AppRoutes.registerScreen);
                  },
                ),
              )),
        ],
      ),
    );
  }

  getBoxShadow() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: K.splashStackColor.withOpacity(.5),
        border: Border.all(color: K.whiteColor.withOpacity(.3)));
  }
  getInoutDecoration(hint, ) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: K.whiteColor.withOpacity(.3)),
      ),

      hintText: hint,
      hintStyle: TextStyle(fontSize: 20.0, color: K.whiteColor.withOpacity(.3)),
      labelStyle: TextStyle(color: Colors.white),
      contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
    );
  }
}
