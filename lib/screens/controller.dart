import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{

  final   isLiked= false.obs;


  FavHandleTap() {
    isLiked.value = !isLiked.value;
    update();
  }
}