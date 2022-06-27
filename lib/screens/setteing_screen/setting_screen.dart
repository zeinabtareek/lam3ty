import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:lam3ty/data.dart';
import 'package:lam3ty/routes/app_route.dart';
import '../../componant/avatar_image.dart';
import '../../componant/custom_divider.dart';
import '../../componant/custom_image_row.dart';
import '../../componant/fixed_list_tile.dart';
import '../../componant/notifications_list_tile.dart';
import '../../constants/constant.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

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
              text: 'الاعدادات ',
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
                      itemCount: settingList.length,
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Column(
                          children: [
                            FixedListTile(
                              onTap: () {
                                if (index == 0) {
                                  Get.toNamed(AppRoutes.notificationsScreen);
                                } else if (index == 1) {
                                  Get.toNamed(AppRoutes.helpScreen);
                                } else if (index == 2) {
                                  Get.toNamed(AppRoutes.termsScreen);
                                } else if (index == 3) {
                                } else if (index == 4) {
                                } else if (index == 5) {}
                              },
                              title: settingList[index].toString(),
                              iconLeading: settingIcons[index],
                            ),
                            CustomDivider(),
                          ],
                        ),
                      ),
                    ),
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
