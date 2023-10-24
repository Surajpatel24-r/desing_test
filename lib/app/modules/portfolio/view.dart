import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'widgets/project_card.dart';

class PortfolioScreen extends StatelessWidget {
  PortfolioScreen({super.key});

  final _controller = Get.find<PortfolioController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.miniCenterFloat,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              "Portfolio",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.red,
                    size: 24.r,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.red,
                    size: 24.r,
                  ))
            ],
            bottom: TabBar(
              indicatorColor: Colors.red,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.black,
              dividerColor: Colors.black,
              isScrollable: false,
              labelPadding: EdgeInsets.only(right: 10.w),
              labelStyle: Theme.of(context)
                  .textTheme
                  .titleSmall!
                  .copyWith(color: Colors.red),
              tabs: const [
                Tab(text: "Project"),
                Tab(text: "Saved"),
                Tab(text: "Shared"),
                Tab(text: "Achievment"),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.red,
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              size: 20.r,
            ),
            label: Text(
              "Filter",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.white),
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      height: 48.h,
                      child: TextField(
                        onChanged: (value) {
                          _controller.filter(value);
                        },
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 6.w, vertical: 6.h),
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 20.r,
                                  )),
                            ),
                            hintText: "Search a project",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(16.r))),
                      ),
                    ),
                    Expanded(
                      child: GetBuilder(
                          init: _controller,
                          builder: (context) {
                            return ListView.builder(
                              itemCount: _controller.showList.length,
                              shrinkWrap: true,
                              physics: const BouncingScrollPhysics(),
                              itemBuilder: (context, index) => ProjectCard(
                                imageUrl: _controller.showList[index]
                                    ["imageUrl"],
                                grade: _controller.showList[index]["grade"],
                                sub1: _controller.showList[index]["sub1"],
                                sub2: _controller.showList[index]["sub2"],
                                title: _controller.showList[index]["title"],
                              ),
                            );
                          }),
                    )
                  ],
                ),
              ),
              const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("saved")]),
              const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Shared")]),
              const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Achievement")]),
            ],
          ),
        ),
      ),
    );
  }
}
