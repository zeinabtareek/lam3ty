
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lam3ty/routes/app_route.dart';
import 'package:lam3ty/routes/app_screen.dart';
import 'constant.dart';
import 'controller/auth_controller.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
            initialRoute: AppRoutes.changePassScreen,
            // initialRoute: AppRoutes.servicesApproveScreen,
            getPages: AppScreens.screens,
          ),
        ),
      );
   }
}