import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constant.dart';
import 'home_story.dart';

class UserProfileImg2 extends StatelessWidget {
  const UserProfileImg2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 155.h,
        color: Colors.transparent,
        child: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    UserAvatar(
                      size: 80,
                      isNav: false,
                      image: 'assets/images/user_image.png',
                    ),
                    K.sizedBoxH,
                    Text(
                      'Perla_pipol',
                      style: TextStyle(color: K.whiteColor, fontSize: 12.sp),
                    ),
                  ],
                ),
              );
            }));
  }
}
