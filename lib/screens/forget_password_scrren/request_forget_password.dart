import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../login_screen/login_screen.dart';

class RequestForgetPassword extends StatelessWidget {
  const RequestForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImage(
            text: 'نسيت كلمه المرور ؟',
            isLoginScreen: false,
          ),
          K.sizedBoxH,
          Container(
            width: 350.w,
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: AutoSizeText(
              'أدخل عنوان بريدك الإلكتروني في أدناه وسنرسل لك رابطا لإعاده تعيين كلمه مرورك',
              style: TextStyle(
                  color: K.TypeColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          LoginLabel(
            text: 'البريد الالكتروني',
          ),
          CustomTextField(
            icon: Icon(Icons.supervisor_account_rounded),
            isPassword: false,
          ),
          K.sizedBoxH,
          Button(
            size: K.width,
            text: 'إرسال ',
            isLoggin: true,
            onPressed: () {
              Get.offAll(AppRoutes.forgetPassScreen);
            },
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
