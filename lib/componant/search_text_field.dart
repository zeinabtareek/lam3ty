import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class SearchTextField extends StatelessWidget {
  final Function()? onTap;

  const SearchTextField({
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 20.0.w, vertical: 10.0.h),
      padding: EdgeInsets.symmetric(
          horizontal: 10.0.w, vertical: 10.0.h),
      width: K.width * 0.7,
      height: 47.h,
      decoration: BoxDecoration(
        color: K.searchColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        cursorColor: K.whiteColor,
        controller: TextEditingController(text: ''),
        autofillHints: [AutofillHints.email],
        onEditingComplete: () => TextInput.finishAutofillContext(),
        decoration: const InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: K.whiteColor,
          ),
        ),
        onTap: onTap,
            // (){
          // Get.to(BusCarScreen());
        // },
        onChanged: (value) {},
      ),
    );
  }
}
