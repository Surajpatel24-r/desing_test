import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

import 'app/core/themes/theme.dart';
import 'app/routes/pages.dart';
import 'app/routes/routes.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(const DesingTest());
}

class DesingTest extends StatelessWidget {
  const DesingTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) =>  GetMaterialApp(
        title: "Desing Test",
        initialRoute: AppRoutes.splashScreen,
        getPages: AppPages.pages,     
        theme: AppTheme.lightTheme,
      ),
    );
  }
}