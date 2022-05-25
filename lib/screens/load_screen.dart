import 'dart:async';
 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import '../constant.dart';
import 'animated_screens/animated_splash.dart';
import 'home_navigation_bar/home.dart';



class LoadingScreen extends StatefulWidget {
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

startTimer(){
  Timer(Duration(seconds: 3), ()async
  {
    // if( await services.auth.currentUser!=null){
    //   // currentFirebaseUser=services.auth.currentUser;
    //   Get.offAll(const Home());
    // }
    // else{
      Get.to(const OnboardingScreen());
    // }
   }
  );
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
     super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body:Center(
          child:  Container(
              height: K.height,
              color: K.whiteColor,
              child:
              SpinKitWanderingCubes(
                itemBuilder: (BuildContext context, int index) {
                  return DecoratedBox(
                    decoration: BoxDecoration(
                      color: index.isEven ? K.mainColor : K.mainColor.withOpacity(.8),
                    ),
                  );
                },
              )
          ),
        ),
      );
  }
}
