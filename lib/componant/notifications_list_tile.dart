

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constant.dart';
import 'custom_divider.dart';

class NotificationsListTile extends StatelessWidget {
  String ?notificationsTextNumber;
  String ?notificationsDetails;
    NotificationsListTile({
    this.notificationsTextNumber,
    this.notificationsDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(notificationsTextNumber.toString(),style: TextStyle(color: K.TypeColor,fontWeight: FontWeight.bold,fontSize: 20.sp),),
          Text(notificationsDetails.toString(),style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500),),
          CustomDivider(),
        ],
      ),
    );
  }
}
