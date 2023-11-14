import 'package:arkan/screens/modules/courses/controller/courses_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryDetailView extends StatelessWidget {
  final int categoryId;

  CategoryDetailView({Key? key, required this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryDetailController controller =
        Get.put(CategoryDetailController());

    controller.fetchCourseDetails(categoryId);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Category Detail'),
      ),
      body: Center(child: Obx(
        () {
          if (controller.coursedetailed.isNotEmpty) {
            return Column(
              children: controller.coursedetailed.map((course) {
                return Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.sp),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        controller.getcourses(course.displayname),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }).toList(),
            );
          } else {
            return const Text('No courses found');
          }
        },
      )),
    );
  }
}
