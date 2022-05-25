
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../componant/home_story.dart';
import '../../constant.dart';
import '../home/home_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'controller/home_controller.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> body = [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      // ProfileScreen(),

    ];
    final _controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor:K.kBackGroundColor,
        body: Obx(() => Center(
              child: body.elementAt(_controller.selectIndex),
            )),
        bottomNavigationBar: Obx(() =>
                ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25), topRight: Radius.circular(25)),
                child: BottomNavigationBar(
                  items:     <BottomNavigationBarItem>[
                    BottomNavigationBarItem(

                      icon: Icon(Icons.home_outlined,size: 30.sp,),
                      label: '',

                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_outlined,size: 30.sp,),
                      label: '',

                    ),

                    BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_outline_rounded,size: 30.sp,),
                      label: ''
                    ),
                    BottomNavigationBarItem(
                      icon: UserAvatar(size: 40, isNav: true, image: 'assets/images/user_image.png',),
                        // color: Color(0xFF3A5A98),
                      // ),
                     label: ''
                    ),
                  ],
                  selectedItemColor: K.mainColor,
                  unselectedItemColor: K.whiteColor,
                  backgroundColor:K.searchColor,
                  type: BottomNavigationBarType.fixed,
                  currentIndex: _controller.selectIndex,
                  onTap: (index) {_controller.select(index);},




              ),

            )


        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){ },
        tooltip: 'Camera',
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.add,
            size: 40,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
    gradient: LinearGradient(colors: [K.secmainColor, K.mainColor],
          ),
          ),
        ),

        backgroundColor:K.searchColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
