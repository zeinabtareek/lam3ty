import 'package:dio/dio.dart';

import '../constants/constants_url.dart';

class DioUtilNew {

  static DioUtilNew? _instance;
  static Dio _dio=Dio() ;


  static DioUtilNew? getInstance() {
    if (_instance == null) {
      _dio = Dio(_getOptions());
    }
    return _instance;
  }

  static Dio get dio => _dio;

  static void setDioAgain() {
    _dio = Dio(_getOptions());
  }

  static BaseOptions _getOptions() {
    BaseOptions options = BaseOptions(
      followRedirects: false,
      validateStatus: (status) => status! <= 500,
    );
    options.connectTimeout = 20 * 1000; //10 sec
    options.receiveTimeout = 20 * 1000; //20 sec
    options.baseUrl = 'https://lamatiapp.com/api/';
    options.headers = {
      'Accept': 'application/json',
      'Content-Type': 'application/json',
      // 'Authorization': "Bearer ${box.read(Constants.accessToken.toString())}"
      // 'Authorization': "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpLWlzdGNocmF0Lm1hemFkYWsubmV0XC9hcGlcL3YxXC9hdXRoXC9sb2dpbiIsImlhdCI6MTY0NjkwNTE0NiwiZXhwIjoxNjUwNTA1MTQ2LCJuYmYiOjE2NDY5MDUxNDYsImp0aSI6InpHUm5mNzVPYUdIaG9rd2wiLCJzdWIiOjMsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.JNbMo91I1l9NeKQliAeec51yZqeNtCl6KeKkJ25WHqo"
   };


    options.queryParameters = {};
    return options;
  }
  //this just returns the language key
  static String handleDioError(DioError dioError) {
    String errorDescription = "";
    switch (dioError.type) {
      case DioErrorType.cancel:
        errorDescription = "request_cancelled";
        break;
      case DioErrorType.connectTimeout:
      //Connection timeout with API server
        errorDescription = "timeout";
        break;
      case DioErrorType.other:
        errorDescription = "checkout_internet";
        break;
      case DioErrorType.receiveTimeout:
        errorDescription = "timeout";
        break;
      case DioErrorType.response:
        print("Received invalid status code: ${dioError.response!.statusCode}");
        errorDescription = "unknown_error";
        break;
      case DioErrorType.sendTimeout:
        errorDescription = "timeout";
        break;
    }
    return errorDescription;
  }

  // static Future<Either<String, dynamic>> doNetworkRequest(
  //     Future<dynamic> request,
  //     ) async {
  //   try {
  //     final result = await request;
  //     return Right(result);
  //   } on DioError catch (e) {
  //     return Left(DioUtilNew.handleDioError(e));
  //   }
  // }
}