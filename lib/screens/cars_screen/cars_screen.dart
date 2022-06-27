import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/cars_card.dart';
import '../../componant/custom_button.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_image_row.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../componant/loging_componant/rich_text.dart';
import '../../constants/constant.dart';
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
        children: [
        Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: CustomImageRow(
          text: 'مركباتي',
          onPressed: (){Get.back();}, widget: Container(),
          ),
      ),
      Positioned.fill(
        top: 150.h,
        left: 0,
        right: 0,
        child:  SingleChildScrollView(
              child: Wrap(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    width: K.width,
                    height: K.height,
                    child: ListView.builder(
                      itemCount: 19,
                      primary: false,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (ctx, index) =>
                          Card(
                              elevation: 3,
                              shape:
                              RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)) ,
                              color: K.whiteColor,
                              child: Container(
                                width: K.width,
                                child:CarsCard(
                        carType: ' فيراري',
                        image: 'https://www.pngall.com/wp-content/uploads/11/Tuning-Car-PNG-Photo.png',
                        carColor: K.mainColor,
                        carModel: ' auto 2021',
                        isAlert: true,
                      ),
                    ),
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
        backgroundColor: K.mainColor,
        foregroundColor: Colors.white,
        splashColor: Colors.black,
        onPressed: () {
         Get.toNamed( AppRoutes.carsServiceScreen,);
        },
        child: const Icon(
          Icons.add,
          size: 50,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
