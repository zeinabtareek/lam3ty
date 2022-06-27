import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lam3ty/componant/custom_vehical_color.dart';
import 'package:lam3ty/componant/load_image.dart';

import '../constants/constant.dart';
import 'custom_time_widget.dart';

class CarsCard extends StatelessWidget {
  String image ;
  String carType;
  String carModel;
  Color carColor ;
  bool  isAlert ;
  bool ?isServicesApproveScreen;
  CarsCard({
    Key? key,
      required this.image,
      required this.carColor,
      required this.carModel,
      required this.carType,
      required this.isAlert,
        this.isServicesApproveScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      // Card(
      //   elevation: 6,
      //   shape: isServicesApproveScreen!=true?
      //   RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)):null,
      //   color: K.whiteColor,
      //   child: Container(
      //     width: K.width,
      //     child:
      //
          Directionality(
              textDirection: TextDirection.rtl,
              child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        SizedBox(
                          height:isServicesApproveScreen!=true? 91:114.h,
                          width: isServicesApproveScreen!=true?110.w:129.w,
                          child: LoadImage(image: image.toString(),),),
                    K.sizedBoxW,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        isServicesApproveScreen==true?
                        TimeWidget(date: ' 20-8-2021 ', time: ' 09:00 ص',redColor:true):Container(height: 0,width: 0,),
                        Wrap(
                          alignment: WrapAlignment.start,
                         crossAxisAlignment: WrapCrossAlignment.start,
                         children: [
                           Text('نوع المركبه :$carType',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    fontSize:isServicesApproveScreen==true?16.sp:13.sp,
                                    color: K.TypeColor, fontWeight: FontWeight.bold),),
                          ],
                        ),
                        Text('موديل المركبه :$carModel',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize:isServicesApproveScreen==true?16.sp:13.sp, height:2,color: K.TypeColor, fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('لون المركبه :',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(
                              fontSize:isServicesApproveScreen==true?16.sp:13.sp,
                              height:2,color: K.TypeColor, fontWeight: FontWeight.bold),),
                        SizedBox(width: 5.w,),
                        CarColor(width: (isAlert!=true&&isServicesApproveScreen==false)?30.w:20,height: isAlert!=true?20.h:10,carColor: K.mainColor,),
                      ],
                    )
                      ],
                    ),
                  ],
                ),
              // ),
    //     ),
    );
  }
}


