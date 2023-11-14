class SignUpModel {
  bool success;
  String warning;

  SignUpModel({
    required this.success,
    required this.warning,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
      success: json['success'] ?? false,
      warning: json['warning'] ?? "",
    );
  }
}
