import 'package:get/get.dart';


import '../modules/base/bindings.dart';
import '../modules/base/view.dart';
import '../modules/splash/bindings.dart';
import '../modules/splash/view.dart';
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRoutes.splashScreen, page: ()=> const SplashScreen(),binding: SplashBinding()),
    GetPage(name: AppRoutes.appBaseScreen, page: ()=> BaseScreen(),binding: BaseBinding(),transition: Transition.cupertino),
  ];
}