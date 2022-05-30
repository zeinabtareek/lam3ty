import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/cars_card.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constant.dart';
import '../../routes/app_route.dart';
import '../login_screen/login_screen.dart';
import 'controller/cars_controller.dart';

class CarsScreen extends StatelessWidget {
  CarsScreen({Key? key}) : super(key: key);
  CarsScreenController controller = Get.put(CarsScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Stack(
        // crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          Positioned(
            top: 0,
              left: 0,
              right: 0,
              child: CustomImage(text: 'مركباتي', isLoginScreen: false)),
               Positioned(top:170,
                 child: SingleChildScrollView(
                      child: Wrap(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                 Container(width: K.width,
                                height: K.height,
                                child: ListView.builder(
                                  itemCount: 19,
                                  primary: false,
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  padding: EdgeInsets.zero,
                                  itemBuilder: (ctx, index) => CarsCard(
                                    carType: ' فيراري',
                                    image:
                                        'https://www.bugatti.com/fileadmin/_processed_/sei/p1/se-image-85e0e9ab23134961c88e4ecea2bff53f.jpg',
                                    carColor: K.mainColor,
                                    carModel: ' auto 2021',
                                    isAlert: false,
                                  ),
                                ),
                              ),
                            ],
                          ),
                    ),
               ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 50,
        ),
        backgroundColor: K.mainColor,
        foregroundColor: Colors.white,
        splashColor: Colors.black,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );

    //    Scaffold(
    //   backgroundColor: K.whiteColor,
    //   body: Stack(
    //     children: [
    //       Positioned(
    //         top: 50.h,
    //         left: 150.w,
    //         child: LoginCustomText(
    //           text: 'مركباتي ',
    //           size: 28,
    //           loginScreen: true,
    //         ),
    //       ),
    //       Positioned(
    //         top: 0.h,
    //         child: Image(
    //           image: const AssetImage(
    //             'assets/images/Vector.png',
    //           ),
    //           width: K.width,
    //           fit: BoxFit.fill,
    //           height: 240.h,
    //           color: K.mainColor,
    //           alignment: Alignment.topCenter,
    //         ),
    //       ),
    //       Positioned(
    //           right: 0,
    //           left: 0,
    //           top: 130.h,
    //           child: Column(
    //             mainAxisAlignment: MainAxisAlignment.start,
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               ListView.builder(
    //                 physics: ClampingScrollPhysics(),
    //                 itemCount: 5,
    //                 shrinkWrap: true,
    //                 padding: EdgeInsets.zero,
    //                 itemBuilder: (ctx, index) => CarsCard(
    //                   carType: ' فيراري',
    //                   image: 'https://www.bugatti.com/fileadmin/_processed_/sei/p1/se-image-85e0e9ab23134961c88e4ecea2bff53f.jpg',
    //                   carColor:K.mainColor,
    //                   carModel: ' auto 2021', isAlert: false,
    //                 ),
    //               ),
    //               K.sizedBoxH,
    //
    //             ],
    //           )),
    //
    //     ],
    //   ),floatingActionButton: FloatingActionButton(
    //     child: const Icon(Icons.add,size: 50,),
    //     backgroundColor: K.mainColor,
    //     foregroundColor: Colors.white,
    //     splashColor: Colors.black,
    //     onPressed: () {},
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    // );
  }
}
