import 'package:get/get.dart';

class BaseController extends GetxController {
  final currentIndex = 0.obs;
  
  var isLocationShowen = false;
  void setIsLocationShowen(bool value ){
    isLocationShowen = value;
  }
}
