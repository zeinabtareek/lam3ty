import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../componant/radio_button.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../../services/auth/otp/otp_services.dart';
import '../login_screen/login_screen.dart';
import '../otp_screen/otp_screen.dart';
import 'controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());
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
            top: 90.h,
            // top: 600,
            child: Container(
              width: K.width,
              height: 300.h,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginCustomText(
                      text: 'تسجيل جديد ',
                      size: 30,
                      loginScreen: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 0,
              left: 0,
              top: 130.h,
              child: SingleChildScrollView(
                child:  Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          K.sizedBoxH,
                          LoginLabel(
                            text: controller.allItems[0],),
                          CustomTextField(
                             type: TextInputType.name,
                            icon: Icon(null),
                            isPassword: false,
                            onchange: (v) {
                              controller.validName(v);
                              print(v);
                            },
                          ),
                         LoginLabel(
                            text: controller.allItems[1],),
                          CustomTextField(
                             type: TextInputType.emailAddress,
                            icon: Icon(null),
                            isPassword: false,
                            onchange: (v) {
                              controller.validEmail(v);
                              print(v);
                            },
                          ),
                         LoginLabel(
                            text: controller.allItems[2],),
                          CustomTextField(
                              type: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(1),

                            ],
                            icon: Icon(null),
                            isPassword: false,
                            onchange: (v) {
                              controller.validmobile(v);
                              print(v);
                            },
                          ),
                  GetBuilder <RegisterController>(
                      init: RegisterController(),
                      builder: (controller)=>
                          CustomRadioButton(
                              controller: controller
                          )
                  ),
                          LoginLabel(
                            text: controller.allItems[4],),
                          CustomTextField(
                             type: TextInputType.visiblePassword,
                            icon: Icon(null),
                            isPassword: false,
                            onchange: (v) {
                               controller.validPass(v);
                               print(v);
                            },
                          ),
                          LoginLabel(
                            text: controller.allItems[5],),
                          CustomTextField(
                            type: TextInputType.visiblePassword,
                            icon: Icon(null),
                            isPassword: false,
                            onchange: (v) {
                              controller.validConfirmPass(v);

                            },
                          ), GetBuilder <RegisterController>(
                    init: RegisterController(),
                    builder: (controller)=> Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                controller.allItems[6],
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Radio(
                                value: 'agree',
                                groupValue: controller.agree.value,
                                onChanged: (v) {
                                  controller.isAgreed(v);
                                },
                              ),
                            ],
                          ),
                          ),
                          Button(
                            size: K.width,
                            text: 'تسجيل  ',
                            isLoggin: true,
                            onPressed: () {
                             controller.validateForm();
                            },
                          ),
                          Center(
                            child: FixedRichText(
                              key: key,
                              leftLabel: " لديك حساب ؟",
                              rightLabel: "تسجيل الدخول ",
                              onTab: () {
                                Get.toNamed(AppRoutes.loginScreen);
                              },
                            ),
                          )
                        ]
                ),
              ))
        ],
      ),
    );
  }

}
