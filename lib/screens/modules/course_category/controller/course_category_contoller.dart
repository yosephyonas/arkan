import 'package:arkan/screens/modules/course_category/model/course_category_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CourseCategoryController extends GetxController {
  RxList<CourseCategory> courseCategories = RxList<CourseCategory>([]);
  RxString selectedLanguage = RxString('EN');

  final String apiUrl = "https://arkantrc.com/webservice/rest/server.php?"
      "wstoken=cd6a18206ee19ba1ffadecc6b004c345"
      "&wsfunction=core_course_get_categories"
      "&moodlewsrestformat=json";

  Future<void> fetchCourseCategories() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      print('API URL: $apiUrl');
      print('Response: ${response.body}');

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        List<CourseCategory> categories =
            jsonData.map((e) => CourseCategory.fromJson(e)).toList();

        for (var category in categories) {
          category.name = getCategoryName(category.name);
        }

        courseCategories.assignAll(categories);
      } else {
        throw Exception('Failed to load course categories');
      }
    } catch (e) {
      print('Error fetching course categories: $e');
    }
  }

  String getCategoryName(String categoryName) {
    List<String> languages = categoryName
        .split('{mlang}')
        .where((element) => element.isNotEmpty)
        .toList();

    String finalName = languages[0];

    if (languages.length > 1) {
      finalName = selectedLanguage.value == 'AR' ? languages[1] : languages[0];
    }

    finalName = finalName.replaceAll(RegExp(r'{mlang (?:EN|AR)}'), '');

    print('Original Category Name: $categoryName');
    print('Selected Language: ${selectedLanguage.value}');
    print('Final Category Name: $finalName');

    return finalName.trim();
  }

  void setSelectedLanguage(String language) {
    selectedLanguage.value = language;
    update(); 
  }
}
