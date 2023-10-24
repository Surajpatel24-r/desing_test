import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String sub1;
  final String sub2;
  final String grade;
  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.sub1,
    required this.sub2,
    required this.grade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
          border: Border.all(width: .5, color: Colors.grey),
          borderRadius: BorderRadius.circular(16.r)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.r),
                bottomLeft: Radius.circular(16.r)),
            child: SizedBox(
              height: 100.h,
              width: 100.h,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 100.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 220.w,
                  padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 6.h),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontSize: 15.sp),
                  ),
                ),
                SizedBox(
                  width: 220.w,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(sub1,
                                style: Theme.of(context).textTheme.bodyMedium),
                            Text(
                              sub2,
                              style: context.textTheme.titleSmall!
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 4.h),
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.amber[600]!,
                                    Colors.amber,
                                    Colors.amber[200]!,
                                  ]),
                              borderRadius: BorderRadius.circular(4.r)),
                          child: Text(
                            grade,
                            style: context.textTheme.titleMedium!
                                .copyWith(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
