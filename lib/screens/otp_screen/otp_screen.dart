import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
 import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../componant/otp_input.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import 'controller/otp_controller.dart';


class OtpScreen extends StatelessWidget {
  String phoneNo;
  OtpScreen({Key? key, required this.phoneNo }) : super(key: key);
  OtpController controller =Get.put( OtpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: K.whiteColor,
      body: Center(
        child: Obx(()=>
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(
                  children: [
                    Positioned(
                      top: 100.h,
                        child: LoginCustomText(
                          text: 'رمز التأكيد  ',
                          size: 28,
                          loginScreen: true,
                        ),),
                    Image.asset('assets/images/Vector.png',height: 280.h,width: K.width,color: K.mainColor,
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ],
                ),
                  Center(
                  child: Text(
                    'الرجاء ادخال الكود المكون من 4 أرقام المستلم في الرسائل النصية\n الي الرقم (${phoneNo})',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      color: K.blackColor,
                    ),
                  ),
                ),
                K.sizedBoxH,
                  Text(controller.otp.value.isEmpty? 'الرجاء ادخال رمز التأكيد':
                 '  الرمز هو  ${ controller.otp.value}  ' ,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpInput(controller.fieldOne,  true, 60.h, 89.w,),
                    OtpInput(controller.fieldTwo, false, 60.h, 89.w,),
                    OtpInput(controller.fieldThree, false, 60.h, 89.w,),
                    OtpInput(controller.fieldFour, false, 60.h, 89.w,)
                  ],),
                Spacer(),
                Button(
                  controller: controller,
                  onPressed: (){
                    controller.otp.value =
                      controller.fieldOne.text +
                      controller.fieldTwo.text +
                      controller.fieldThree.text +
                      controller.fieldFour.text;
                  // Get.toNamed(AppRoutes.homeNave);
                    controller.otpVerfication();
                    // controller.otpVerfication(controller.mobile, VerficationCode)

                  print(controller.otp.value);
                  print(phoneNo.toString());
                  },

                  text: 'تأكيد', size: K.width,
                  isLoggin: true,
                ),
                Center(
                  child:FixedRichText(
                    key: key,
                    leftLabel: " لم يتم ارسال الرمز ؟",
                    rightLabel: "ارسال جديد ",
                    onTab: () {
                      Get.toNamed(AppRoutes.loginScreen);
                    },
                  ),
                ),Spacer(),
              ],
            ),
        ),
      ),
    );
  }
}

