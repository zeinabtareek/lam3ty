import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CarsCard extends StatelessWidget {
  String image ;
  String carType;
  String carModel;
  Color carColor ;

  CarsCard({
    Key? key,
      required this.image,
      required this.carColor,
      required this.carModel,
      required this.carType,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      color: K.whiteColor,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 10.h),
        width: K.width,
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              children: [
                Column(
                  children: [
                    Image.network(image,
                      height: 91.h,
                      width: 116.w,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 10.h),
                      // width:K.width,
                      child: Text('نوع المركبه :$carType',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: K.grayColor,
                            fontFamily: "Poppins-Bold"),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
