import 'package:get/get.dart';

import '../screens/car_service_screen/controller/car_services_controller.dart';
import '../screens/cars_screen/controller/cars_controller.dart';
import '../screens/controller.dart';
import '../screens/home_navigation_bar/controller/home_controller.dart';
import '../screens/login_screen/controller/login_controller.dart';
import '../screens/otp_screen/controller/otp_controller.dart';
import '../screens/profile_screen/controller.dart';
import '../screens/register_screen/controller/register_controller.dart';


class Binding extends Bindings {
  @override
  void dependencies (){
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => ProfileController());
    Get.lazyPut(() => CarsScreenController());
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => OtpController());
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CarServicesController());
    Get.lazyPut(() => RegisterController());



  }
}