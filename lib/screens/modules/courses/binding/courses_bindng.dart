import 'package:arkan/screens/modules/courses/controller/courses_controller.dart';
import 'package:get/get.dart';

class CategoryDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoryDetailController>(() => CategoryDetailController());
  }
}
