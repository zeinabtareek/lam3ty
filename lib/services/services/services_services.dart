import 'dart:convert';

 import 'package:flutter/material.dart';
import 'package:http/io_client.dart';
import 'package:lam3ty/constants/constants_url.dart';

import '../../helper/dio_integration.dart';
// import 'package:http/http.dart' as http;
import '../../model/services_model.dart';
import '../../repo/car_services_repo/car_services_repo.dart';

class Services implements CarServicesRepo{
  final dio = DioUtilNew.dio;
  final responseModel = ServicesModel();

   @override
  GetServices() async {
    try {
      final response = await dio.get(ConstantsURL.getServicesURLTail);
       print(response.data);
       return ServicesModel.fromJson(response.data);
     }
     catch (e) {
      print(e);
    }
  }
}

