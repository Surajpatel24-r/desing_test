import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';



import '../home/view.dart';
import '../portfolio/view.dart';
import 'controller.dart';

class BaseScreen extends StatelessWidget {
   BaseScreen({super.key});

   final _controller = Get.find<BaseController>();


   Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return PortfolioScreen();
      case 2:
        return HomeScreen();
      default:
        return HomeScreen();
    }
  }

   final List<GetxController> controllers = [
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      ()=> Scaffold(
          body: _getPage(_controller.currentIndex.value),
          bottomNavigationBar: 
            BottomNavigationBar(
              selectedFontSize: 10.sp,
              unselectedFontSize: 10.sp,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.red,
              
              items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard_outlined),
                  activeIcon: Icon(Icons.dashboard),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shop),
                  activeIcon: Icon(Icons.shop),
                  tooltip: "Portfolio",
                  label: 'Portfolio',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.wallet_giftcard),
                  activeIcon: Icon(Icons.groups_2),
                  label: 'Input',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
                
              
            ],
            currentIndex: _controller.currentIndex.value,
            onTap: (value) {
              // if (value != _controller.currentIndex.value) {
              //   GetxController ads = controllers[_controller.currentIndex.value];
              // Get.delete<ManagePropertyController>();
              // _controller.currentIndex.value = value;
              // Get.put(controllers[_controller.currentIndex.value]);
            // }
            print(value);
            // if (value == 0){
            //   // Get.put(controllers[_controller.currentIndex.value]);
            //   Get.put(DashboardController());
            // } else if (value == 1){
            //   Get.put(ManagePropertyController());
            //   Get.delete<DashboardController>();
            //   Get.delete<ProfileController>();
            // } else if (value == 3){
            //   Get.put(ProfileController());
            //   Get.delete<ManagePropertyController>();
            //   Get.delete<DashboardController>();
            // }
              _controller.currentIndex.value = value;
            },
            ),
          
        ),
    );
    
  }
}
