class CategoryDetail {
  final int id;
  final String shortname;
  final int categoryid;
  final int categorysortorder;
   String fullname;
   String displayname;

  CategoryDetail({
    required this.id,
    required this.shortname,
    required this.categoryid,
    required this.categorysortorder,
    required this.fullname,
    required this.displayname,
    // Add other properties as needed
  });

  factory CategoryDetail.fromJson(Map<String, dynamic> json) {
    return CategoryDetail(
      id: json['id'],
      shortname: json['shortname'],
      categoryid: json['categoryid'],
      categorysortorder: json['categorysortorder'],
      fullname: json['fullname'],
      displayname: json['displayname'],
    );
  }
}
