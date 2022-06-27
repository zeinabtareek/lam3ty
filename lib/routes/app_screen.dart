
import 'package:get/get.dart';

import '../load_screen.dart';
import '../screens/animated_screens/animated_splash.dart';
import '../screens/car_service_screen/car_service_screen.dart';
import '../screens/car_service_screen/services_approve_screen.dart';
import '../screens/cars_screen/cars_screen.dart';
import '../screens/first_splash_screen/first_splash_screen.dart';
import '../screens/forget_password_scrren/change_password.dart';
import '../screens/forget_password_scrren/forget_password_screen.dart';
import '../screens/forget_password_scrren/request_forget_password.dart';
import '../screens/help_screen/help_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/home_navigation_bar/home.dart';
import '../screens/login_screen/login_screen.dart';
import '../screens/notifications_screen/notifications_screen.dart';
import '../screens/otp_screen/otp_screen.dart';
import '../screens/profile_screen/profile_screen.dart';
import '../screens/register_screen/register_screen.dart';
import '../screens/reservations_screen/reservations_screen.dart';
import '../screens/setteing_screen/setting_screen.dart';
import '../screens/terms_screen/terms_screen.dart';
import '../screens/update_profile/update_profile.dart';
import '../screens/wallet_screen/wallet_screen.dart';
import 'app_route.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoutes.homeNave, page: () => const Home()),
    GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen()),
    GetPage(name: AppRoutes.registerScreen, page: () =>   RegisterScreen()),
    GetPage(name: AppRoutes.otpScreen, page: () =>   OtpScreen(phoneNo: '',)),
    GetPage(name: AppRoutes.loadingScreen, page: () => LoadingScreen()),
    GetPage(name: AppRoutes.carsScreen, page: () =>   CarsScreen()),
    GetPage(name: AppRoutes.homeScreen, page: () => const HomeScreen()),
    GetPage(name: AppRoutes.onboardScreen, page: () => const OnboardingScreen()),
    GetPage(name: AppRoutes.splashScreen, page: () =>   SplashScreen()),
    GetPage(name: AppRoutes.reservationsScreen, page: () =>   ReservationsScreen()),
    GetPage(name: AppRoutes.requestForgetPassScreen, page: () =>   RequestForgetPassword()),
    GetPage(name: AppRoutes.forgetPassScreen, page: () =>   ForgetPassword()),
    GetPage(name: AppRoutes.changePassScreen, page: () =>   ChangePasswordScreen()),
    GetPage(name: AppRoutes.updateProfileScreen, page: () =>   UpdateProfileScreen()),
    GetPage(name: AppRoutes.profileScreen, page: () =>   ProfileScreen()),
    GetPage(name: AppRoutes.walletScreen, page: () =>   WalletScreen()),
    GetPage(name: AppRoutes.termsScreen, page: () =>   TermsScreen()),
    GetPage(name: AppRoutes.settingScreen, page: () =>   SettingScreen()),
    GetPage(name: AppRoutes.notificationsScreen, page: () =>   NotificationsScreen()),
    GetPage(name: AppRoutes.carsServiceScreen, page: () =>   CarsServiceScreen()),
    GetPage(name: AppRoutes.servicesApproveScreen, page: () =>   ServicesApproveScreen()),
    GetPage(name: AppRoutes.helpScreen, page: () =>   HelpScreen()),
  ];
}
