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

class  ForgetPassword extends StatelessWidget {
  const  ForgetPassword({Key? key}) : super(key: key);

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
            width: 400.w,
            padding: EdgeInsets.symmetric(horizontal: 27.w),
            child: AutoSizeText(
              'يجب أن تتكون كلمات المرور من ثمانية أحرف على الأقل ، تذكر أنه لا يوصى بإعادة استخدام أسماء المستخدمين وكلمات المرور للخدمات ومواقع الويب المختلفة',
              style: TextStyle(
                  color: K.TypeColor,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500),
              textDirection: TextDirection.rtl,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          LoginLabel(
            text: 'كلمة المرور الجديدة',),
          CustomTextField(
            icon: Icon(Icons.supervisor_account_rounded),
            isPassword: false,
          ),
          LoginLabel(
            text: ' كلمة المرور مرة أخرى',),
          CustomTextField(
            icon: Icon(Icons.supervisor_account_rounded),
            isPassword: false,
          ),
          K.sizedBoxH,
          Button(
            size: K.width,
            text: 'تغير ',
            isLoggin: true,
            onPressed: () {
              Get.offAll(AppRoutes.changePassScreen);
            },
          ),
        ],
      ),
    );
  }
}
