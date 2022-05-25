import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../componant/radio_button.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import '../login_screen/login_screen.dart';
import 'controller/register_controller.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = Get.put(RegisterController());
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
              child:SingleChildScrollView(
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemCount: _controller.allItems.length,
                      itemBuilder: (ctx, index) => GetBuilder<RegisterController>(
                        init: RegisterController(),
                        builder: (controller) {
                          return index!=3&&index!=6?Column(
                            children: [
                              LoginLabel(
                                text: _controller.allItems[index],
                              ),
                              CustomTextField(
                                icon: Icon(null),
                                isPassword: false,
                              ),
                            ],
                          ):
                          index==3? CustomRadioButton(controller: _controller):
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(_controller.allItems[6], style:   TextStyle(fontSize: 16.0),),
                              Radio(
                                value: 'agree',
                                groupValue:    controller.agree.value,
                                onChanged: (v){
                                  controller.isAgreed(v);
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Button(
                      size: K.width,
                      text: 'تسجيل  ',
                      isLoggin: true,
                      onPressed: () {
                        Get.offAll(LoginScreen());
                      },
                    ),
                    Center(
                      child:   FixedRichText(
                        key: key,
                        leftLabel: " لديك حساب ؟",
                        rightLabel: "تسجيل الدخول ",
                        onTab: () {
                          Get.toNamed(AppRoutes.loginScreen);
                        },

                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  getBoxShadow() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: K.splashStackColor.withOpacity(1),
        border: Border.all(color: K.whiteColor.withOpacity(.3)));
  }

  getInoutDecoration(hint) {
    return InputDecoration(
      enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: K.whiteColor.withOpacity(1)),
      ),
      hintText: hint,
      hintStyle: TextStyle(fontSize: 20.0, color: K.whiteColor.withOpacity(.3)),
      labelStyle: TextStyle(color: Colors.white),
      contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
    );
  }
}


