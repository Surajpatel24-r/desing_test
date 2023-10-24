import 'package:get/get.dart';

class PortfolioController extends GetxController {
  final currentIndex = 0.obs;
  List showList = [];

  List projectList = [
    {
      "imageUrl": "assets/image.jpg",
      "title": "Kemampuan Merangkum Tulisan",
      "sub1": "BAHASA SUNDA",
      "sub2": "Oleh AI-Baiqi Samaan",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "Kemampuan Merangkum Tulisan",
      "sub1": "BAHASA SUNDA",
      "sub2": "Oleh AI-Baiqi Samaan",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "Kemampuan Merangkum Tulisan",
      "sub1": "BAHASA SUNDA",
      "sub2": "Oleh AI-Baiqi Samaan",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "title1",
      "sub1": "sub1",
      "sub2": "sub2",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "title2",
      "sub1": "sub1",
      "sub2": "sub2",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "title1",
      "sub1": "sub1",
      "sub2": "sub2",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "title2",
      "sub1": "sub1",
      "sub2": "sub2",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "title1",
      "sub1": "sub1",
      "sub2": "sub2",
      "grade": "A"
    },
    {
      "imageUrl": "assets/image.jpg",
      "title": "title2",
      "sub1": "sub1",
      "sub2": "sub2",
      "grade": "A"
    }
  ];

  @override
  void onInit() {
    showList = projectList;
    super.onInit();
  }

  void filter(String value) {
    showList = projectList
        .where((element) => element["title"].toString().contains(value))
        .toList();
    update();
  }
}
