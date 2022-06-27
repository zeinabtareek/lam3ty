import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../constants/constant.dart';
import '../screens/reservations_screen/controller/controller.dart';
import 'cars_card.dart';
import 'custom_divider.dart';
import 'load_image.dart';

class CarDataDetails extends StatelessWidget {
  bool ?isDetailsServiceScreen=false;

  CarDataDetails({Key? key,
    this.isDetailsServiceScreen,
     }) : super(key: key);
  ReservationController controller=Get.put(ReservationController());
  @override
  Widget build(BuildContext context) {
    return
    //   Card(
    //     elevation: 6,
    //     shape:
    //     RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
    // color: K.whiteColor,
    // child: Container(
    // width: K.width,
    // child:
    Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          isDetailsServiceScreen!=true?  Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'التفاصيل',
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize:  24.sp,
                    color: K.mainColor),
              ),
              InkWell(
                child:
                Image.asset(
                  'assets/images/exit.png',
                  height: 30,
                  width: 30,
                ),
                onTap: () {
                  Get.back();
                },
              )
            ],
          ):Container(),
            isDetailsServiceScreen!=true?CustomDivider():Container(),
          isDetailsServiceScreen!=true?
          CarsCard(
            // isServicesApproveScreen:true,
            carType: ' فيراري',
            image:
            'https://media.istockphoto.com/photos/red-generic-sedan-car-isolated-on-white-background-3d-illustration-picture-id1189903200?k=20&m=1189903200&s=612x612&w=0&h=L2bus_XVwK5_yXI08X6RaprdFKF1U9YjpN_pVYPgS0o=',
            carColor: Colors.black,
            carModel: ' auto 2021',
            isAlert: false,
          )
              :Container(),
          const CustomDivider(),
          Container(
            height: isDetailsServiceScreen==true?null:150,
            width: K.width,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.descriptionsList.length,
              padding:EdgeInsets.zero,
              itemBuilder: (ctx,index){
                return Padding(
                  padding: isDetailsServiceScreen==true?
                  EdgeInsets.symmetric(vertical:15.h ):
                  EdgeInsets.zero,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        controller.descriptionsList[index].toString()
                        ,style: TextStyle(fontSize:(index==0 ||isDetailsServiceScreen==true)?19.sp:16.sp ,color: index==0?K.mainColor:K.blackColor,fontWeight: (index==0 ||isDetailsServiceScreen==true)?FontWeight.bold:FontWeight.normal,height: 1.5),),
                      Text(
                        controller.detailsList[index].toString(),
                        style: TextStyle(fontSize: (index==0 ||isDetailsServiceScreen==true)?19.sp:16.sp ,color: index==0?K.mainColor:K.blackColor,fontWeight: (index==0 ||isDetailsServiceScreen==true)?FontWeight.bold:FontWeight.normal),),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
 }
