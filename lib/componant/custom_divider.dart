


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/constant.dart';

 class CustomDivider extends StatelessWidget {
   const CustomDivider({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return const Divider(
       color: K.TypeColor,
       thickness: 1.0,
     );
   }
 }
