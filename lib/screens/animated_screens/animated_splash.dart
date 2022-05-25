import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../componant/animated_componant/data.dart';
import '../../componant/animated_componant/dot.dart';
import '../../componant/custom_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constant.dart';
import '../../model/splash_model.dart';
import '../../routes/app_route.dart';
import '../login_screen/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: K.mainColor,
        body: PageView.builder(
          controller: _pageController,
          itemCount: tabs.length,
          itemBuilder: (BuildContext context, int index) {
            OnboardingModel tab = tabs[index];
            return Stack(
              children: [
                Image.asset('assets/images/Vector.png'),
                Positioned(
                  top: 30.h,
                  child: Image(
                    image: AssetImage(
                      tabs[_currentIndex].image,
                    ),
                    key: Key('${Random().nextInt(999999999)}'),
                    width: K.width,
                    fit: BoxFit.contain,
                    height: K.height,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  // top: 600,
                  child: Container(
                    width: K.width,
                    height: 400.h,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10)),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              LoginCustomText(
                                text: tab.title.toString(),
                                size: 28,
                                loginScreen: false,
                              ),
                              SizedBox(height: 30.h),
                              Button(
                                size: K.width,
                                text: 'ابداء الآن',
                                isLoggin: false,
                                onPressed: () {
                                  Get.offAll(const LoginScreen());
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Row(
                            // mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                  onTap: (){
                                    _currentIndex > 0 ?   _pageController.animateToPage(_currentIndex=_currentIndex-1, duration: Duration(milliseconds: 30),
                                      curve: Curves.easeIn,):null;
                                    setState(() {});
                                  },
                                  child:  Text(
                                _currentIndex > 0 ? 'السابق' : '',
                                style: TextStyle(
                                    color: K.whiteColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.sp),
                              ),
                              ),
                              K.sizedBoxW,
                              K.sizedBoxW,
                              for (int index = 0; index < tabs.length; index++)
                                DotIndicator(
                                    isSelected: index == _currentIndex),
                              K.sizedBoxW,
                              K.sizedBoxW,
                              InkWell(
                                onTap: (){
                                  setState(() {});
                                  _currentIndex !=2? _pageController.animateToPage(_currentIndex=_currentIndex+1, duration: Duration(milliseconds: 30),
                                    curve: Curves.easeIn,):Get.toNamed(AppRoutes.loginScreen);
                                },
                                child: Text(
                                  'التالي',
                                  style: TextStyle(
                                      color: K.whiteColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.sp),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          onPageChanged: (value) {
            _currentIndex = value;
            setState(() {});
          },
          // Container(
          //     padding: EdgeInsets.symmetric
          //       (horizontal: 30.0.w ,vertical: 30.0.h),
          //     height: K.height,
          //     width: K.width,
          //     color: K.splashScreenColor,
          //     child:Column(
          //       children: [
          //
          //             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //
          //                   children: [
          //                     Container(
          //                   child:  Padding(
          //                     padding: EdgeInsets.only
          //                       (left: 5.0.w ,top:  3.0.h,bottom:  3.0.h),
          //                    child: Icon(Icons.arrow_back_ios ,color: Colors.black,size: 21.sp,),),
          //                       decoration: BoxDecoration(
          //                           color: K.whiteColor,
          //                           borderRadius: new BorderRadius.circular(100)
          //                     )
          //                     ), Container(
          //                   child:   Image.asset('assets/images/AddContact.png' ,),),
          //           ],
          //         ),
          //           SizedBox(
          //             height: 96.h,
          //           ),
          //           Row(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             children: [
          //               UserAvatar(
          //                 size: 120,
          //                 isNav: false,
          //                 image: 'assets/images/user_image.png',
          //               ),
          //             ],
          //           ),
          //         SizedBox(
          //           height: 16.h,),
          //         Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children:   [
          //            Text('صديق',style: TextStyle(
          //              color: K.splashTypingColor,
          //              fontSize: 25.sp
          //            ),),
          //             Text('Contacting...',style: TextStyle(
          //              color: K.whiteColor,
          //              fontSize: 16.sp
          //            ),),
          //
          //           ],
          //         ),
          //         SizedBox(
          //           height: 80.h,),
          //         DisablePhoneButton(),
          //         ],
          //     )
          // ),
        ));
  }


}
