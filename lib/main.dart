
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lam3ty/routes/app_route.dart';
import 'package:lam3ty/routes/app_screen.dart';
import 'constants/constant.dart';
import 'controller/auth_controller.dart';
import 'helper/dio_integration.dart';


class MyHttpoverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=>true;
  }
}

Future<void> main() async {
  HttpOverrides.global=  MyHttpoverrides();
  WidgetsFlutterBinding.ensureInitialized();
  DioUtilNew.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final controller =Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    VisualDensity.adaptivePlatformDensity;
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return
      MediaQuery(
        data:  MediaQueryData(),
        child:  ScreenUtilInit(
          designSize: new Size(428, 926),
          builder: (BuildContext, Widget ) => GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(  ),
            initialRoute: AppRoutes.registerScreen,
            getPages: AppScreens.screens,
          ),
        ),
      );
   }
}