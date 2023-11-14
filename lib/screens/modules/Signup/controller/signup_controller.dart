import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:get/get.dart';

import '../model/signup_model.dart';

class SignupController extends GetxController {
  final String apiUrl = "https://arkantrc.com/webservice/rest/server.php?"
      "wstoken=cd6a18206ee19ba1ffadecc6b004c345"
      "&wsfunction=auth_email_signup_user"
      "&moodlewsrestformat=json";

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailAddressController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController cityTownController = TextEditingController();
  TextEditingController selectCountryController = TextEditingController();

  Rx<SignUpModel?> signupSettings = Rx<SignUpModel?>(null);

  @override
  void onClose() {
    userNameController.dispose();
    passwordController.dispose();
    emailAddressController.dispose();
    firstNameController.dispose();
    surnameController.dispose();
    cityTownController.dispose();
    selectCountryController.dispose();
    super.onClose();
  }

  Future<void> signUp() async {
    try {
      final response = await http.post(Uri.parse(apiUrl), body: {
        'username': userNameController.text,
        'password': passwordController.text,
        'email': emailAddressController.text,
        'firstname': firstNameController.text,
        'lastname': surnameController.text,
        'city': cityTownController.text,
        'country': selectCountryController.text,
      });
      print('API URL: $apiUrl');
      print('Response: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> jsonData = json.decode(response.body);
        signupSettings.value = SignUpModel.fromJson(jsonData);

        Get.snackbar(
          'Success',
          'You have successfully signed up!',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
      } else {
        throw Exception('Failed to sign up: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during signup: $e');
      Get.snackbar(
        'Error',
        'Failed to sign up. Please try again later.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  bool _isPasswordValid(String value) {
    // Password must have at least 8 characters
    if (value.length < 8) return false;

    // Password must have at least 1 digit
    if (!value.contains(RegExp(r'\d'))) return false;

    // Password must have at least 1 lower case letter
    if (!value.contains(RegExp(r'[a-z]'))) return false;

    // Password must have at least 1 upper case letter
    if (!value.contains(RegExp(r'[A-Z]'))) return false;

    // Password must have at least 1 special character
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) return false;

    return true;
  }

  void validatePassword(String password) {
    if (_isPasswordValid(password)) {
      // Password is valid, you can handle it accordingly
      // For example, you can set a flag or display a success message
    } else {
      // Invalid password, handle it (e.g., show an error message)
    }
  }
}
