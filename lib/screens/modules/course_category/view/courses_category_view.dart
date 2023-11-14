// ignore_for_file: camel_case_types

import 'package:arkan/screens/modules/course_category/controller/course_category_contoller.dart';
import 'package:arkan/screens/modules/courses/view/courses_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class courses extends StatefulWidget {
  const courses({super.key});

  @override
  State<courses> createState() => _coursesState();
}

class _coursesState extends State<courses> {
  final CourseCategoryController controller =
      Get.put(CourseCategoryController());

  @override
  void initState() {
    super.initState();
    Get.find<CourseCategoryController>().fetchCourseCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/images/logo1.png",
                  width: ScreenUtil().setWidth(76),
                  height: ScreenUtil().setHeight(70),
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: const Color(0xFFC9B82E),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30.h, 0, 10.h),
                    child: Text(
                      "Course Categories",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GetBuilder<CourseCategoryController>(
                      builder: (controller) {
                        return GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemCount: controller.courseCategories.length,
                          itemBuilder: (context, index) {
                            final category = controller.courseCategories[index];
                            return Column(
                              children: [
                                SizedBox(
                                  height: 141.h,
                                  width: 141.w,
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(CategoryDetailView(
                                          categoryId: category.id));
                                      print(
                                          'Selected Category ID: ${category.id}'); // Added print statement
                                    },
                                    child: Card(
                                      elevation: 4,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.sp),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            size: 48.sp,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 141.w,
                                  child: Text(
                                    controller.getCategoryName(category.name),
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                    ),
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
