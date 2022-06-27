import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_login_label.dart';
import '../../componant/loging_componant/custom_text_field.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../login_screen/login_screen.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImage(
            text: '    ',
            isLoginScreen: false,
            imageurl: 'assets/images/profileimage.png',
            isProfileScreen: true,
          ),
          SizedBox(
            height: 20.h,
          ),
          LoginLabel(text: 'الأسم ',),
          CustomTextField(
            icon: Icon(Icons.supervisor_account_rounded), isPassword: false,),
          LoginLabel(text: 'البريد الألكتروني',),
          CustomTextField(
            icon: Icon(Icons.supervisor_account_rounded), isPassword: false,),

          LoginLabel(text: 'رقم الهاتف',),
          CustomTextField(
            type: TextInputType.number,
            icon: Icon(Icons.supervisor_account_rounded), isPassword: false,),
          K.sizedBoxH,
          Button(
            size: K.width,
            text: 'تحديث ',
            isLoggin: true,
            onPressed: () {
              // Get.offAll(AppRoutes.forgetPassScreen);
            },
          ),
        ],
      ),
    );
  }
}
