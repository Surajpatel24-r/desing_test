import 'dart:async';
import 'package:design_test/app/routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late Timer _timer;
  @override
  void onInit() {
    _timer = Timer(const Duration(seconds: 3), () {
      _navigateTOHome();
    });
    super.onInit();
  }

  _navigateTOHome() {
    Get.offAllNamed(AppRoutes.appBaseScreen);
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }
}
