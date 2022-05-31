 import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';


class AuthController extends GetxController{

 final connectivity = Connectivity();
 late StreamSubscription subscription;


 Future<StreamSubscription> connect() async {
  subscription = connectivity.onConnectivityChanged.listen((result) async {
   switch (result) {
    case ConnectivityResult.mobile:
     bool isNotConnected = result == ConnectivityResult.mobile;

     // Utility.showSnackBar(isNotConnected);
     print(result.toString());
     break;
    case ConnectivityResult.wifi:
     bool isNotConnected = result == ConnectivityResult.wifi;
     // changeLoggedIn(true, _currentUser.value);
     // Utility.showSnackBar(isNotConnected);

     print(result.toString());
     break;
    case ConnectivityResult.none:
     // Utility.showAlertNetWork();
     print(result.toString());

     break;
    case ConnectivityResult.bluetooth:
    // TODO: Handle this case.
     break;
    case ConnectivityResult.ethernet:
    // TODO: Handle this case.
     break;
   }
  });

  return subscription;
 }

 @override
  void onInit() {
  connect();

  }
}