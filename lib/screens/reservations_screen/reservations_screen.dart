import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../componant/car_data_details.dart';
import '../../componant/cars_card.dart';
import '../../componant/custom_divider.dart';
import '../../componant/custom_image.dart';
import '../../componant/custom_time_widget.dart';
import '../../componant/custom_vehical_color.dart';
import '../../constants/constant.dart';
import '../controller.dart';
import 'controller/controller.dart';

class ReservationsScreen extends StatelessWidget {
  TabController? _tabController;
  final  homePageController=Get.put(HomePageController());
  ReservationController controller =Get.put(ReservationController());

  bool isBlank2=false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            toolbarHeight: 80,
            bottom: TabBar(
              indicatorColor: K.mainColor,
              labelColor: K.mainColor,
              unselectedLabelColor: K.TypeColor,
              labelStyle:
                  TextStyle(fontSize: 23.sp, fontWeight: FontWeight.bold),
              tabs:   const [
                Tab(
                  text: 'الحاليه',
                 ),
                Tab(
                  text: 'السابقه',
                ),
              ],
            ),
          ),
          body:  Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                    CustomImage(text: 'الحجوزات', isLoginScreen: false),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  // width: K.width,
                  height:
                  K.height,
                  child: TabBarView(
                    dragStartBehavior: DragStartBehavior.start,
                    children: [
                     Container(
                       width: 20,
                       height: 20,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Image.asset('assets/images/placeholder.png' ,fit: BoxFit.contain,
                           width: 70,height: 70,),
                        const AutoSizeText('عفوا لا يوجد حجوزات حاليا'),
                       ],
                     ),),
                      previousScreen(),
                    ],
                  ),
                ),
              ],

          )),
    );
  }
Widget current( ){
    return  Image.asset('assets/images/placeholder.png');
}

Widget previousScreen() {
    return   GridView.builder(
          primary: false,
          scrollDirection: Axis.vertical,
           shrinkWrap: true,
          gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 1,
                childAspectRatio: 2,
                  crossAxisCount:  2,
              ),
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          itemBuilder: (ctx, index) {
            return InkWell(
              onTap: ()async {
                // onBasicWaitingAlertPressed(ctx);
               await homePageController.onBasicWaitingAlertPressed(ctx,
                   widgetContent:Container(child: Directionality(
                     textDirection: TextDirection.rtl,
                     child: Column(
                         crossAxisAlignment: CrossAxisAlignment.end,
                         mainAxisAlignment: MainAxisAlignment.start,
                         children: [
                           Row(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 'التفاصيل',
                                 style: TextStyle(
                                     fontWeight: FontWeight.w600,
                                     fontSize: 24.sp,
                                     color: K.mainColor),
                               ),
                               InkWell(
                                 child: Image.asset(
                                   'assets/images/exit.png',
                                   height: 30,
                                   width: 30,
                                 ),
                                 onTap: () {
                                   Get.back();
                                 },
                               ),
                             ],
                           ),
                           const CustomDivider(),
                           CarsCard(
                             carType: ' فيراري',
                             image:
                             'https://media.istockphoto.com/photos/red-generic-sedan-car-isolated-on-white-background-3d-illustration-picture-id1189903200?k=20&m=1189903200&s=612x612&w=0&h=L2bus_XVwK5_yXI08X6RaprdFKF1U9YjpN_pVYPgS0o=',
                             carColor: Colors.black,
                             carModel: ' auto 2021',
                             isAlert: true,
                             isServicesApproveScreen: false,
                           ),
                           const CustomDivider(),
                           Container(
                               height:150,
                               width: K.width,
                               child: ListView.builder(
                                 shrinkWrap: true,
                                 itemCount: controller.descriptionsList.length,
                                 padding: EdgeInsets.zero,
                                 itemBuilder: (ctx,index){
                                   return Row(
                                     mainAxisSize: MainAxisSize.min,
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text(controller.descriptionsList[index].toString(),style: TextStyle(fontSize: index==0?18.sp:16.sp ,color: index==0?K.mainColor:K.TypeColor,fontWeight: index==0?FontWeight.bold:FontWeight.normal,height: 1.5),),
                                       Text(controller.detailsList[index].toString(),style: TextStyle(fontSize: index==0?18.sp:16.sp ,color: index==0?K.mainColor:K.blackColor,fontWeight: index==0?FontWeight.bold:FontWeight.normal),),
                                     ],
                                   );
                                 },))
                         ]  ),
                   ),),
               );
              },
              child:Card(
                elevation: 2,
                child:  Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TimeWidget(date: ' 20-8-2021 ', time: ' 09:00 ص',),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:   [
                          CarColor(width: 18,height:  10,carColor: K.mainColor,),
                          Text('مكسولوجين ',style: TextStyle(color: K.mainColor,fontSize: 18.sp,fontWeight: FontWeight.w500),),
                        ],
                      )
                    ],
                  ),
                ),

              ),
            );
          }
    );
  }
}
// onBasicWaitingAlertPressed(context) async {
//   ReservationController controller =Get.put(ReservationController());
//   await Alert(
//     context: context,
//     style: const AlertStyle(
//       animationType: AnimationType.fromTop,
//       isCloseButton: false,
//       isButtonVisible: false,
//       descStyle: TextStyle(fontWeight: FontWeight.bold),
//       animationDuration: Duration(milliseconds: 400),
//       constraints: BoxConstraints.expand(width: 300),
//       overlayColor: Color(0x55000000),
//       alertElevation: 0,
//     ),
//     content: Container(child: Directionality(
//       textDirection: TextDirection.rtl,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 'التفاصيل',
//                 style: TextStyle(
//                     fontWeight: FontWeight.w600,
//                     fontSize: 24.sp,
//                     color: K.mainColor),
//               ),
//               InkWell(
//                 child: Image.asset(
//                   'assets/images/exit.png',
//                   height: 30,
//                   width: 30,
//                 ),
//                 onTap: () {
//                   Get.back();
//                 },
//               ),
//             ],
//           ),
//           const CustomDivider(),
//         CarsCard(
//                 carType: ' فيراري',
//                 image:
//                     'https://media.istockphoto.com/photos/red-generic-sedan-car-isolated-on-white-background-3d-illustration-picture-id1189903200?k=20&m=1189903200&s=612x612&w=0&h=L2bus_XVwK5_yXI08X6RaprdFKF1U9YjpN_pVYPgS0o=',
//                 carColor: Colors.black,
//                 carModel: ' auto 2021',
//           isAlert: true,
//           isServicesApproveScreen: false,
//           ),
//           const CustomDivider(),
//           Container(
//             height:150,
//             width: K.width,
//             child: ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: controller.descriptionsList.length,
//                 padding: EdgeInsets.zero,
//                 itemBuilder: (ctx,index){
//                   return Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(controller.descriptionsList[index].toString(),style: TextStyle(fontSize: index==0?18.sp:16.sp ,color: index==0?K.mainColor:K.TypeColor,fontWeight: index==0?FontWeight.bold:FontWeight.normal,height: 1.5),),
//                       Text(controller.detailsList[index].toString(),style: TextStyle(fontSize: index==0?18.sp:16.sp ,color: index==0?K.mainColor:K.blackColor,fontWeight: index==0?FontWeight.bold:FontWeight.normal),),
//                     ],
//                   );
//                 },))
//          ]  ),
//           ),),
//
//   ).show();
// }
