import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lam3ty/componant/custom_divider.dart';

import '../../componant/app_bar.dart';
import '../../componant/car_data_details.dart';
import '../../componant/cars_card.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../constants/constant.dart';
import '../../routes/app_route.dart';
import '../controller.dart';

class ServicesApproveScreen extends StatelessWidget {
  final homePageController = Get.put(HomePageController());



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(
        text: 'التفاصيل',
      ),
      body: Stack(
        children: [
          Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: CustomImage(text: ' ', isLoginScreen: false)),
          Positioned(
            top: 130,
            right: 20,
            left: 20,
            child: Column(
              children: [
                CarsCard(
                  carType: ' فيراري',
                  image:
                      'https://media.istockphoto.com/photos/red-generic-sedan-car-isolated-on-white-background-3d-illustration-picture-id1189903200?k=20&m=1189903200&s=612x612&w=0&h=L2bus_XVwK5_yXI08X6RaprdFKF1U9YjpN_pVYPgS0o=',
                  carColor: Colors.black,
                  carModel: ' auto 2021',
                  isAlert: false,
                  isServicesApproveScreen: true,
                ),
                K.sizedBoxH,
                CarDataDetails(
                  isDetailsServiceScreen: true,),
                CustomDivider(),
                Row(
                  children: [
                    Expanded(
                      child: Button(
                        size: K.width,
                        text: 'رجوع',
                        isLoggin: false,
                        onPressed: () {
                          // Get.offAndToNamed(AppRoutes.loginScreen);
                        },
                      ),
                    ),
                    Expanded(
                      child: Button(
                        size: K.width,
                        text: 'تاكيد ',
                        isLoggin: true,
                        onPressed: () async {
                          await homePageController.onBasicWaitingAlertPressed(
                            context,
                            widgetContent: Wrap(
                              alignment: WrapAlignment.center,
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Image.asset(
                                    'assets/images/thanks.png',
                                    height: 166.h,
                                  ),
                                ),
                                Button(
                                  size: K.width,
                                  text: 'تم ',
                                  isLoggin: true,
                                  onPressed: () {
                                    Get.back();
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
