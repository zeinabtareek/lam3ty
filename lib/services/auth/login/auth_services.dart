import 'dart:convert';

import 'package:get/get.dart';

import '../../../data.dart';
import '../../../data.dart';
import '../../../helper/cache_helper.dart';
import '../../../helper/dio_integration.dart';
 import '../../../routes/app_route.dart';

// class AuthServices {
  final dio = DioUtilNew.dio;
  // Data data =Data();
//   login(String email, String password) async {
//     try {
//       final response = await dio?.post('login', data: {
//         'email': email,
//         'password': password,
//       });
//       data= Data.fromJson(response!.data);
//       print(data);
//       await CacheHelper.saveData(key: 'token', value:data.token.toString());
//       print( await CacheHelper.getData(key: 'token'));
//         Get.snackbar('Success', 'you  are logged in', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
//         Get.offAndToNamed(AppRoutes.home);
//     }
//      catch (e) {
//       Get.snackbar('Filed', 'you  are not accessed', snackPosition: SnackPosition.BOTTOM,
//           duration: const Duration(seconds: 2));
//       print(e);
//     }
//     DioUtilNew.setDioAgain();
//
//   }
//   signOut()async{
//     await CacheHelper.removeData(key: 'token');
//     await CacheHelper.clearData().then((value) =>
//         Get.offAllNamed(AppRoutes.loadingScreen)
//     );
//   }
//
// //not needed
//   register(String email, String password,String name, String mobile) async {
//     try {
//     final response = await dio?.post('register', data: {
//     'email': email,
//     'name': name,
//     'mobile': mobile,
//     'password': password,
//     });
//     data= Data.fromJson(response!.data);
//     print(data);
//     await CacheHelper.saveData(key: 'token', value:data.token.toString());
//     print( await CacheHelper.getData(key: 'token'));
//     Get.snackbar('Success', 'you  are registered ', snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
//     Get.offAndToNamed(AppRoutes.home);
//     }
//     catch (e) {
//     Get.snackbar('Filed', 'you  are not registered $e ', snackPosition: SnackPosition.BOTTOM,
//     duration: const Duration(seconds: 2));
//     }
//     DioUtilNew.setDioAgain();
//     }
//
//
//
// }
