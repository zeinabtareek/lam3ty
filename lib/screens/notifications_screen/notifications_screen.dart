import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_image_row.dart';
import '../../componant/notifications_list_tile.dart';
import '../../constants/constant.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

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
              text: 'الاشعارات ',
              onPressed: (){Get.back();},
              widget:IconButton( onPressed: (){Get.back();}, icon: Icon(Icons.arrow_forward,size: 35.sp,)),),
          ),

          Positioned.fill(
            top: 120,
            left: 0,
            right: 0,
            child:  SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.w, vertical: 30.h),
                child:
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      ListView.builder(
                          itemCount: 17,
                          physics: ClampingScrollPhysics() ,
                          shrinkWrap: true,
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 1.h),
                          itemBuilder: (BuildContext context, index) {
                            return NotificationsListTile(notificationsTextNumber: 'اشعار١',
                                notificationsDetails: 'وعند موافقه العميل المبدئيه على التصميم يتم ازالة هذا النص من التصميم ويتم وضع النصوص النهائية المطلوبة للتصميم الميلاد. من كتاب "حول أقاصي الخير والشر"');
                          }),
                      K.sizedBoxH,
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}


