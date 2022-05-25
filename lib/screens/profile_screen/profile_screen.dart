//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import '../../componant/custom_button.dart';
// import '../../componant/home_story.dart';
// import '../../constant.dart';
// import '../../data.dart';
// import 'controller.dart';
//
// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({Key? key}) : super(key: key);
//
//    @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               AspectRatio(aspectRatio: (92 / 75), child:
//               Container(
//                   padding: EdgeInsets.symmetric
//                     (horizontal: 36.0.w ,vertical: 20.0.h),
//                 decoration:   const BoxDecoration(
//                     color: K.searchColor,
//                     borderRadius:   BorderRadius.only(
//                       bottomRight: Radius.circular(20.0),
//                       bottomLeft: Radius.circular(20.0),
//                     )
//                 ),
//                 child: Wrap(
//                   crossAxisAlignment: WrapCrossAlignment.end,
//                   // mainAxisAlignment: MainAxisAlignment.start,
//                   // crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         Image.asset('assets/images/profileplusIcon.png',),
//                         Positioned(
//                           left: 5.w,
//                             right: 0,
//                             bottom: 1.h,
//                             child: const Text('+',style: TextStyle(color: Colors.white ,fontSize: 20 ),))
//                       ],
//                     ),
//                     Image.asset('assets/images/chat.png'),
//                   ],
//                 ),
//                      Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//
//                       children: [
//                         Column(
//
//                           children: [
//                         UserAvatar(size: 100, isNav: false, image: 'assets/images/user_image.png',),
//                             K.sizedBoxH,
//                             Text('Mauricio LoPez',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.sp,color: K.whiteColor),),
//                             K.sizedBoxH,
//                             K.sizedBoxH,
//                             K.sizedBoxH,
//                             Text('🖱 Diseño ui/ux y Fotografia 📷 Zihuatanejo, ',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp,color: K.whiteColor),),
//                             K.sizedBoxH,
//                             Text('  Mexico#LifeStyle #Design #Photography #Urban #Art',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12.sp,color:K.hashtagColor ),),
//                             K.sizedBoxH,
//                             K.sizedBoxH,
//                           ],
//                     )  ],
//                     ),
//
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Column(
//                           children: [
//                             Text('735',style: TextStyle(color: K.whiteColor,fontSize: 28.sp,fontWeight: FontWeight.bold),),
//                             Text('Friends',style: TextStyle(color: K.grayColor,fontSize: 12.sp,fontWeight: FontWeight.w400),)
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text('876',style: TextStyle(color: K.whiteColor,fontSize: 28.sp,fontWeight: FontWeight.bold),),
//                             Text('Followers',style: TextStyle(color: K.grayColor,fontSize: 12.sp,fontWeight: FontWeight.w400),)
//                           ],
//                         ),
//                         Column(
//                           children: [
//                             Text('568',style: TextStyle(color: K.whiteColor,fontSize: 28.sp,fontWeight: FontWeight.bold),),
//                             Text('Following',style: TextStyle(color: K.grayColor,fontSize: 12.sp,fontWeight: FontWeight.w400),)
//                           ],
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       children: [
//                         SizedBox(width: K.width/2.7.w,height: 55.h, child: Button(text: 'Follow', size: K.width/2.8.w),),
//                         SizedBox(width: K.width/2.7.w,height: 55.h, child: Button(text: 'Follow', size: K.width/2.8.w),),
//                        ],
//                     ),
//               ])
//               )
//               ),
//               K.sizedBoxH,
//               K.sizedBoxH,
//               Button(text: 'Write Thing!', size: K.width),
//         SizedBox(
//           height: 60.h,child:  ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//           padding: EdgeInsets.symmetric
//             (horizontal: 2.0.w ,vertical: 8.0.h),
//                 itemCount: allItems.length,
//                  itemBuilder: (ctx, index) =>
//               GetBuilder<ProfileController>(
//               init: ProfileController(),
//               builder:(controller){
//               // final x=controller.favoriteList.firstWhere((element) => element.id==productModel!.key,orElse: ()=>null);
//               return Container(
//                              margin: EdgeInsets.symmetric
//                                (horizontal: 40.0.w ,vertical: 2.0.h),
//                              child:
//                              DecoratedBox(
//                                decoration:   BoxDecoration(
//                                  border: Border(
//                                    bottom: BorderSide(
//                                        color: controller.selectedIndex.value == index
//                                            ? K.mainColor
//                                            : K.kBackGroundColor,
//                                    ),
//                                  ),
//                                ),
//                                child:  TextButton(
//                                  onPressed: (){
//                                    controller.selected(index);
//                                    controller.isTapped(index);
//                                  },
//                                  child: Text(
//                                    allItems[index].toUpperCase(),
//                                    style: TextStyle(
//                                      color: controller.selectedIndex.value == index?K.whiteColor:K.grayColor,
//                                      fontSize: 15.sp,
//                                    ),
//                                  ),
//                                ),
//                              ),
//                            );}
//                            )),
//                         ),
//                   StaggeredGridView.countBuilder(
//                     shrinkWrap: true,
//                     physics: const ClampingScrollPhysics(),
//                     crossAxisCount: 4,
//                     itemCount: 8,
//                     itemBuilder: (BuildContext context, int index) =>
//                          Image( image: AssetImage(Images[index].toString(),),
//                           height: K.height,
//                           width: K.width,
//                           fit: BoxFit.cover,),
//                     staggeredTileBuilder: (int index) =>
//                     StaggeredTile.count(2, index.isEven ? 2 : 1),
//                     mainAxisSpacing: 4.0,
//                     crossAxisSpacing: 4.0,
//                   )
//                       ],
//                     ),
//                   ),
//       )
//     );
//   }
// }
