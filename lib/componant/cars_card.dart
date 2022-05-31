import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lam3ty/componant/custom_vehical_color.dart';

import '../constant.dart';

class CarsCard extends StatelessWidget {
  String image ;
  String carType;
  String carModel;
  Color carColor ;
  bool  isAlert ;
  CarsCard({
    Key? key,
      required this.image,
      required this.carColor,
      required this.carModel,
      required this.carType,
      required this.isAlert,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Card(
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
        color: K.whiteColor,
        child: Container(
          width: K.width,
           height: 123.h,
          child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     FittedBox(
                       fit: BoxFit.fill,
                      child:
                         Image.network(image.toString(),
                              height: 91.h,
                              width: 116.w,
                              fit: BoxFit.cover,),
                     ),
                    K.sizedBoxW,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('نوع المركبه :$carType',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 13.sp, color: K.TypeColor, fontWeight: FontWeight.bold),),
                        Text('موديل المركبه :$carModel',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 13.sp, height:2,color: K.TypeColor, fontWeight: FontWeight.bold),),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('لون المركبه :',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(fontSize: 13.sp,  height:2,color: K.TypeColor, fontWeight: FontWeight.bold),),
                        K.sizedBoxW,
                        CarColor(width: isAlert!=true?40.w:18,height: isAlert!=true?20.h:10,carColor: K.mainColor,),
                      ],
                    )
                      ],
                    ),
                  ],
                ),
              )),
    );
  }
}


