import 'package:get/get.dart';
import '../portfolio/controller.dart';
import 'controller.dart';

class BaseBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BaseController());
    Get.lazyPut(() => PortfolioController());

  }
}
