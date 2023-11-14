import 'package:arkan/screens/modules/course_category/controller/course_category_contoller.dart';
import 'package:get/get.dart';

class CourseCategoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CourseCategoryController>(() => CourseCategoryController());
  }
}
