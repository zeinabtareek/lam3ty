import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lam3ty/screens/login_screen/login_screen.dart';
import 'package:lam3ty/screens/otp_screen/otp_screen.dart';
import 'package:lam3ty/screens/profile_screen/profile_screen.dart';
import '../../constants/constant.dart';
import '../cars_screen/cars_screen.dart';
import '../reservations_screen/reservations_screen.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      ProfileScreen(),
      ReservationsScreen(),
      CarsScreen(),
      Home(),
    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: K.whiteColor,
      body: Obx(() => Center(
            child: body.elementAt(_controller.selectIndex),
          )),
      bottomNavigationBar: Obx(
        () => Container(
            decoration: const BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: K.secmainColor,
                  blurRadius: 6,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              child: BottomNavigationBar(
                elevation: 3,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon:   Image.asset('assets/images/person.png',
                        height: 25,
                        color: _controller.selectIndex == 0
                            ? K.mainColor
                            : K.blackColor),
                    label: 'الحساب',
                  ),
                  BottomNavigationBarItem(
                    icon:   Image.asset('assets/images/book.png',
                        height: 27,
                        color: _controller.selectIndex == 1
                            ? K.mainColor
                            : K.blackColor),
                    label: 'الحجز',
                  ),
                  BottomNavigationBarItem(
                      icon:   Image.asset('assets/images/cars.png',
                          height: 22,
                          color: _controller.selectIndex == 2
                              ? K.mainColor
                              : K.blackColor.withOpacity(.5)),
                      label: 'المركبات'),
                  BottomNavigationBarItem(
                      icon: Image.asset('assets/images/home.png',
                          height: 25,
                          color: _controller.selectIndex == 3
                              ? K.mainColor
                              : K.blackColor),
                      label: 'الرئيسية'),
                ],
                selectedItemColor: K.mainColor,
                unselectedItemColor: K.blackColor,
                backgroundColor: K.whiteColor,
                type: BottomNavigationBarType.fixed,
                currentIndex: _controller.selectIndex,
                onTap: (index) {
                  _controller.select(index);
                  // _controller.tappedIcon(index);
                },
              ),
            ),),
      ),
    );
  }
}
