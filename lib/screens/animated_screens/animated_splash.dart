import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../componant/animated_componant/data.dart';
import '../../componant/animated_componant/dot.dart';
import '../../componant/custom_button.dart';
import '../../componant/loging_componant/login_custom_text.dart';
import '../../constants/constant.dart';
import '../../model/splash_model.dart';
import '../../routes/app_route.dart';

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
        body: Stack(
          alignment: Alignment.centerLeft,

          children: [

            Positioned.fill(
              top: -400,
              left: 0,
              right: 0,
              child: Container(
               height: K.height/4,
                  decoration:  const BoxDecoration(
                    image:  DecorationImage(
                      image:  AssetImage("assets/images/Vector.png",),
                      fit: BoxFit.fitWidth,),
                ),
              ),
            ),
            PageView.builder(
              controller: _pageController,
              itemCount: tabs.length,
              itemBuilder: (BuildContext context, int index) {
                OnboardingModel tab = tabs[index];
                return Stack(
                  children: [
                    // Image.asset('assets/images/Vector.png'),
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
                                      Get.offAndToNamed(AppRoutes.loginScreen);                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 50.h,
                              ), Row(
                                // mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                      onTap: (){
                                        _currentIndex > 0 ?   _pageController.animateToPage(_currentIndex=_currentIndex-1, duration: Duration(milliseconds: 300),
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
                                        isSelected: index == _currentIndex,
                                    ),
                                  K.sizedBoxW,
                                  K.sizedBoxW,
                                  InkWell(
                                    onTap: (){
                                      setState(() {});
                                      _currentIndex !=2? _pageController.animateToPage(
                                        _currentIndex=_currentIndex+1, duration: Duration(milliseconds: 300),
                                        curve: Curves.easeIn,)
                                          : Get.offAndToNamed(AppRoutes.loginScreen);
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
            ),
          ],
        ));
  }
}
