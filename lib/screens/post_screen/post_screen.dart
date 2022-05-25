
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../componant/home_story.dart';
import '../../componant/indicatr.dart';
import '../../constant.dart';
import '../controller.dart';
import 'controller.dart';

class PostScreen extends StatelessWidget {
  final _controller = Get.put(PostDetailsController());
  final TextEditingController _commentTextController = TextEditingController();
  final FocusNode _commentFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            Stack(
      alignment: Alignment.topLeft,
      children: <Widget>[

        SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 2.4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView.builder(
                    controller: _controller.boardController,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Container(
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: Image(
                          image: const AssetImage(
                            'assets/images/32@3x.png',
                          ),
                          height: K.height,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    itemCount: 6,
                    onPageChanged: (int index) {
                      _controller.isFirstFunction(index);
                      _controller.isLastFunction(index);
                    },
                  ),
                  Indicator(
                    pageController: _controller.boardController,
                    count: 6,
                  ),
                  Positioned(
                      top: 60.h,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back),
                            color: K.whiteColor,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.menu),
                            color: K.whiteColor,
                          )
                        ],
                      )),
                ],
              ),
            ),
            Container(
              color: K.KpostBackground,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GetBuilder<HomePageController>(
                      init: HomePageController(),
                      builder: (controller) {
                        // final x=controller.favoriteList.firstWhere((element) => element.id==productModel!.key,orElse: ()=>null);
                        return Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                controller.isLiked();
                                // controller.addToFavorite(favouriteModel);
                              },
                              icon: controller.isLiked.value
                                  ? const Icon(
                                      Icons.favorite,
                                      color: K.mainColor,
                                    )
                                  : Icon(
                                      Icons.favorite,
                                      color: K.whiteColor,
                                      size: 30.sp,
                                    ),
                            ),
                            const Text(
                              '247',
                              style: TextStyle(
                                color: K.whiteColor,
                              ),
                            )
                          ],
                        );
                      }),
                  K.sizedBoxW,
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/chatPost.png',
                          height: 30.h,
                          width: 30.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      const Text(
                        '57',
                        style: TextStyle(
                          color: K.whiteColor,
                        ),
                      )
                    ],
                  ),
                  K.sizedBoxW,
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/arrow.png',
                          height: 25.h,
                          width: 25.w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      const Text(
                        '33',
                        style: TextStyle(
                          color: K.whiteColor,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  itemCount: 23,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: index != 0
                          ? EdgeInsets.only(
                              left: 14.0.w,
                              right: 14.0.w,
                              top: 2.0.h,
                              bottom: 2.0.h)
                          : EdgeInsets.symmetric(
                              horizontal: 14.0.w, vertical: 20.0.h),
                      width: K.width,
                      // height: 150.h,
                      decoration: BoxDecoration(
                        color:
                            index != 0 ? K.KFirstPostColor : K.KpostBackground,
                        border: Border(
                          bottom: BorderSide(
                              color: K.whiteColor.withOpacity(.2), width: 1.0),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 10.h),
                                    child: UserAvatar(
                                      size: 50,
                                      isNav: index != 0 ? true : false,
                                      image: 'assets/images/user_image.png',
                                    ),
                                  ),
                                  Container(
                                      child: index != 0
                                          ? Row(
                                              children: [
                                                IconButton(
                                                    onPressed: () {},
                                                    icon: Icon(
                                                      Icons.favorite,
                                                      size: 20.sp,
                                                      color: Colors.red,
                                                    )),
                                                Text(
                                                  '57',
                                                  style: TextStyle(
                                                      color: K.whiteColor,
                                                      fontSize: 12.sp),
                                                )
                                              ],
                                            )
                                          : Text(''))
                                ],
                              ),
                              // K.sizedBoxW,
                              Container(
                                padding: EdgeInsets.only(left: 15.sp),
                                width: 255.w,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //
                                    Text(
                                      'Michael Bruno',
                                      style: TextStyle(
                                          color: index == 0
                                              ? K.whiteColor
                                              : K.KPostTextColor,
                                          fontSize: index == 0 ? 20.sp : 16.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    index == 0
                                        ? Text(
                                            '#Photoshoot #Smile #Beautiful #Fashion',
                                            style: TextStyle(
                                                color: K.PosthashtagColor,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w500),
                                          )
                                        : Text(
                                            '',
                                            style: TextStyle(
                                              fontSize: 1.sp,
                                            ),
                                          ),

                                    SizedBox(
                                      width: 271,
                                      // height: 40.h,
                                      child: Text(
                                        'Cras gravida bibendum dolor eu varius Ipsum fermentum velit nisl, eget vehicula.',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: TextStyle(
                                          height: 1.5,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: K.KPostTextColor,
                                        ),
                                      ),
                                    ),
                                    //
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '8h ago',
                                style: TextStyle(
                                    color: K.whiteColor,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ]),
        ),
        // ),
        Positioned(
            bottom: 0,
            left: 0.w,
            right: 0.w,
            child: Container(
                width: K.width,
                height: 80.h,
                decoration: const BoxDecoration(
                  color: K.KpostBackground,
                  // gradient: LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: [
                  //      // K.whiteColor,
                  //     // K.KPostTextColor,
                  //     K.whiteColor,
                  //     K.KFirstPostColor,
                  //     // K.KPostTextColor,
                  //   ],
                  // ),
                  boxShadow: [
                    BoxShadow(
                      color: K.KPostTextColor,
                      blurRadius: 7.0, // soften the shadow
                      spreadRadius: 7.0, //extend the shadow
                      offset: Offset(
                        10.0, // Move to right 10  horizontally
                        10.0, // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10.w,
                    ),
                    UserAvatar(
                      size: 60,
                      isNav: true,
                      image: 'assets/images/user_image.png',
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.0.w, vertical: 2.0.h),
                      margin: EdgeInsets.symmetric(
                          horizontal: 2.0.w, vertical: 2.0.h),
                      width: K.width / 1.5,
                      // color: Colors.transparent,
                      height: 55.h,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Write a Comment",
                          labelStyle: TextStyle(color: K.KPostTextColor),
                          fillColor: K.whiteColor,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: K.KPostTextColor,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: const BorderSide(
                              color: K.KPostTextColor,
                              width: 1.0,
                            ),
                          ),
                          //fillColor: Colors.green
                        ),
                        cursorColor: K.KPostTextColor,
                        validator: (val) {
                          if (val!.length == 0) {
                            return "Email cannot be empty";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    ),
                    Icon(
                      Icons.play_arrow,
                      color: K.KPostTextColor,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                  ],
                ))),
      ],
      // ),
    ));
  }
}
