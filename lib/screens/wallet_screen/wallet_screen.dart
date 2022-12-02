import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_image_row.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomImageRow(
              text: 'المحفظه',
              onPressed: (){Get.back();},
              widget:IconButton( onPressed: (){Get.back();}, icon: Icon(Icons.arrow_forward,size: 35.sp,)),),
          ),
          Positioned.fill(
            top: 140,
            left: 0,
            right: 0,
            child:    Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    K.sizedBoxH,
                    Image.asset('assets/images/wallet.png' ,fit: BoxFit.contain,
                          alignment: Alignment.bottomCenter,
                          width: 145,height: 131,),
                    K.sizedBoxH,
                     const Text('الرصيد المتاح',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: K.TypeColor),),
                     const Text(' 50 رس',style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: K.mainColor,),textDirection: TextDirection.rtl,),
                     const Spacer(),
                  ],
                ),
              ),

        ],
      ),
    );
  }
}
