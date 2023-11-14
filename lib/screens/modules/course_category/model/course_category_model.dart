class CourseCategory {
  final int id;
  String name;
  String description;
  final int sortorder;
  final int coursecount;

  CourseCategory({
    required this.id,
    required this.name,
    required this.description,
    required this.sortorder,
    required this.coursecount,
  });

  factory CourseCategory.fromJson(Map<String, dynamic> json) {
    return CourseCategory(
      id: json['id'],
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      sortorder: json['sortorder'],
      coursecount: json['coursecount'],
    );
  }
}
