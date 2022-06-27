import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/custom_image_row.dart';
import '../../componant/notifications_list_tile.dart';
import '../../constants/constant.dart';
import '../../data.dart';

class HelpScreen extends StatelessWidget {
  HelpScreen({Key? key}) : super(key: key);

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
              text: 'الشروط والاحكام ',
              onPressed: (){Get.back();},
              widget:IconButton( onPressed: (){Get.back();}, icon: Icon(Icons.arrow_forward,size: 35.sp,)),),
          ),
          Positioned.fill(
            top: 120,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 30.h),
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ListView.builder(
                        itemCount: helpList.length,
                        physics: ClampingScrollPhysics(),
                        shrinkWrap: true,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.w, vertical: 1.h),
                        itemBuilder: (BuildContext context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                helpHeadList[index].toString(),
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    height: 2,
                                    color: K.mainColor,
                                    fontWeight: FontWeight.w600),
                              ),
                               Container(
                                padding: EdgeInsets.all(8),
                                child:
                                Text(
                                  helpList[index].toString(),
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500),
                                ),

                              ),
                            ],
                          );
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
