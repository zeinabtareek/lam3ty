//  import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:show_up_animation/show_up_animation.dart';
//
// import '../../constant.dart';
//
// class FixedTextField extends StatelessWidget {
//   const FixedTextField(
//       {Key? key, this.label, this.function, this.type, this.errorLabel})
//       : super(key: key);
//   final String? label;
//   final Function(String)? function;
//   final TextInputType? type;
//   final String? errorLabel;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 2.0.h),
//       child: Column(
//         children: [
//           TextFormField(
//             keyboardType: type,
//             onChanged: function,
//             showCursor: true,
//             cursorColor: K.mainColor,
//             decoration: InputDecoration(
//                 border: InputBorder.none,
//                 label: Text(
//                   label!,
//                   style: TextStyle(
//                       color: K.grayColor,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18.sp),
//                 ),
//                 enabledBorder: const UnderlineInputBorder(
//                     borderSide: BorderSide(color: K.grayColor)),
//                 focusedBorder:   const UnderlineInputBorder(
//                     borderSide: BorderSide(color: K.secmainColor))),
//           ),
//           if (errorLabel != null && errorLabel!.isNotEmpty)
//             Padding(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 10,
//               ),
//               child: ShowUpAnimation(
//                 child: Text(
//                   '$errorLabel',
//                   textAlign: TextAlign.start,
//                   style: TextStyle(
//                     color: Colors.redAccent[700],
//                     fontWeight: FontWeight.bold,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }
