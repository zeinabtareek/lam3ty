import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarColor extends StatelessWidget {
  double width ;
  num height ;
  bool  ?isAlert ;
  Color ?carColor;

    CarColor({Key? key,required this.width ,required this.height ,this.isAlert,this.carColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: isAlert!=true?20.h:15,
      decoration: BoxDecoration(
          color: carColor,
          borderRadius:  BorderRadius.circular(10)
      ),
    );

  }
}
