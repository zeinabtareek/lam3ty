import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LoginController extends GetxController {
  // final _services = LoginServices();
  final _email = ''.obs;
  final _password = ''.obs;
  final check = false.obs;

  String get email => _email.value;

  String get password => _password.value;

  validEmail(String email) {
    _email.value = email;
  }

  validPassword(String password) {
    _password.value = password;
  }

  log(BuildContext context) async {
    check.value = true;
    // UserModel? user = await _services.login(email, password, context);
    // AuthController.to.changeLoggedIn(true, user);
    check.value = !check.value;
  }
}
