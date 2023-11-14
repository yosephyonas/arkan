import 'package:arkan/screens/modules/courses/model/courses_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CategoryDetailController extends GetxController {
  RxList<CategoryDetail> coursedetailed = RxList<CategoryDetail>([]);

  RxString selectedLanguageCourse = RxString('EN');

  final String apiUrl = "https://arkantrc.com/webservice/rest/server.php?"
      "wstoken=cd6a18206ee19ba1ffadecc6b004c345"
      "&wsfunction=core_course_get_courses"
      "&moodlewsrestformat=json";

  Future<void> fetchCourseDetails(int categoryId) async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      print('API URL: $apiUrl');
      print('Response: ${response.body}');

      if (response.statusCode == 200) {
        List<dynamic> jsonData = json.decode(response.body);
        List<CategoryDetail> courses =
            jsonData.map((e) => CategoryDetail.fromJson(e)).toList();

        // Filter courses by categoryId
        courses =
            courses.where((course) => course.categoryid == categoryId).toList();

        if (courses.isNotEmpty) {
          for (var course in courses) {
            course.displayname = getcourses(course.displayname);
          }

          coursedetailed.assignAll(courses);
        } else {
          // No courses found for the selected category ID
          coursedetailed.clear();
        }
      } else {
        throw Exception('Failed to load course details');
      }
    } catch (e) {
      print('Error fetching course details: $e');
    }
  }

  String getcourses(String fullDisplayName) {
    List<String> languages = fullDisplayName
        .split('{mlang}')
        .where((element) => element.isNotEmpty)
        .toList();

    String finalDisplayName = languages[0];

    if (languages.length > 1) {
      finalDisplayName =
          selectedLanguageCourse.value == 'AR' ? languages[1] : languages[0];
    }

    finalDisplayName =
        finalDisplayName.replaceAll(RegExp(r'{mlang (?:EN|AR)}'), '');

    print('Original Category Name: $fullDisplayName');
    print('Selected Language: ${selectedLanguageCourse.value}');
    print('Final Category Name: $finalDisplayName');

    return finalDisplayName.trim();
  }

  void setSelectedCourseLanguage(String language) {
    selectedLanguageCourse.value = language;
    update();
  }
}
