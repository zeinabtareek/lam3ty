import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lam3ty/componant/cars_card.dart';
import 'package:lam3ty/componant/custom_button.dart';
import 'package:lam3ty/componant/custom_divider.dart';
import 'package:lam3ty/constant.dart';
import 'package:lam3ty/screens/detail_screen/controller/detail_controller.dart';
import 'package:lam3ty/screens/reservations_screen/controller/controller.dart';
import 'package:lam3ty/utility/alerts.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailController());

    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Directionality(
                      textDirection: TextDirection.ltr,
                      child: Positioned(
                        top: 80.h,
                        child: SizedBox(
                          width: K.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: const Icon(Icons.arrow_back)),
                              const SizedBox.shrink(),
                              Text(
                                "التفاصيل",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24.sp,
                                    color: K.mainColor),
                              ),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    bottom: 0,
                    child: CarsCard(
                      carType: ' فيراري',
                      image:
                          'https://media.istockphoto.com/photos/red-generic-sedan-car-isolated-on-white-background-3d-illustration-picture-id1189903200?k=20&m=1189903200&s=612x612&w=0&h=L2bus_XVwK5_yXI08X6RaprdFKF1U9YjpN_pVYPgS0o=',
                      carColor: Colors.black,
                      carModel: ' auto 2021',
                      isAlert: true,
                    ),
                  ),
                  Image(
                    image: const AssetImage(
                      'assets/images/Vector.png',
                    ),
                    width: K.width,
                    fit: BoxFit.fill,
                    height: 280.h,
                    color: K.mainColor,
                    alignment: Alignment.topCenter,
                  ),
                ],
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: controller.descriptionsList.length,
                padding: EdgeInsets.zero,
                itemBuilder: (ctx, index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          controller.descriptionsList[index].toString(),
                          style: TextStyle(
                              fontSize: index == 0 ? 18.sp : 16.sp,
                              color: index == 0 ? K.mainColor : K.TypeColor,
                              fontWeight: index == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              height: 1.5),
                        ),
                        Text(
                          controller.detailsList[index].toString(),
                          style: TextStyle(
                              fontSize: index == 0 ? 18.sp : 16.sp,
                              color: index == 0 ? K.mainColor : K.blackColor,
                              fontWeight: index == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal),
                        ),
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: K.height * 0.2),
              Row(
                children: [
                  Expanded(
                    child: Button(
                      size: K.width,
                      text: 'تأكيد ',
                      isLoggin: true,
                      onPressed: () {
                        Utility.infoAlert(context);
                      },
                    ),
                  ),
                  Expanded(
                    child: Button(
                      size: K.width,
                      text: 'رجوع',
                      isLoggin: false,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
