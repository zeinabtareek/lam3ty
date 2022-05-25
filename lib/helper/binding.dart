import 'package:get/get.dart';

import '../screens/controller.dart';
import '../screens/profile_screen/controller.dart';


class Binding extends Bindings {
  @override
  void dependencies (){
    Get.lazyPut(() => HomePageController());
    Get.lazyPut(() => ProfileController());



  }
}