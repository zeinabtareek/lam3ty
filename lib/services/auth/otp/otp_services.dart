import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lam3ty/repo/auth_repo/otp/otp_repo.dart';

import '../../../constants/constant.dart';
import '../../../constants/constants_url.dart';
import '../../../helper/dio_integration.dart';

class OTPServices implements OTPRepo{
  final dio = DioUtilNew.dio;

  @override
  Future OtpVerfication(String phoneNo, String VerficationCode) async{
    final Map<String, dynamic> Data = {
      'phoneNo': phoneNo,
      'VerficationCode': VerficationCode,
    };

    final response =await dio.post(
       ConstantsURL.verifyUserURLTail, data: Data,
     );
     print('---------------(${response.data})');
    if (response.statusCode == 200) {
       print( response.statusCode);

    }
   else  throw Exception('......');

    return Future.error(response.statusMessage.toString());
  }

}