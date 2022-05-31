




import 'package:get/get.dart';

class HomeController extends GetxController{
  final _selectIndex =1.obs;
  int get selectIndex=> _selectIndex.value;

  select(int index){
    _selectIndex.value=index;
    update();
  }

}