import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import '../login_screen/login_screen.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImage(
            text: '  ',
            isLoginScreen: false,
          ),
        Spacer(),
        Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/done.png' ,fit: BoxFit.contain,
                  alignment: Alignment.bottomCenter,
                  width: 100,height: 100,),
                AutoSizeText('تم تغيير كلمه المرور بنجاح',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold,color: K.TypeColor),),
              ],
            ),
          const Spacer(),
          Center(
            child: FixedRichText(
              key: key,
              leftLabel: " ",
              rightLabel: "تسجيل الدخول ",
              isForgetPassScreen: true,
              onTab: () {
                Get.toNamed(AppRoutes.registerScreen);
              },
            ),
          ),
          K.sizedBoxH,
        ],
      ),
    );
  }
}
