import 'package:arkan/screens/modules/Signin/view/signin.dart';
import 'package:arkan/screens/forget_password.dart';
import 'package:arkan/screens/register_subscribe.dart';
import 'package:arkan/screens/modules/Signup/view/signup_view.dart';
import 'package:arkan/screens/splashscreen.dart';
import 'package:arkan/screens/language_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    splashscreen.initial: (context) => const splashscreen(),
    language_page.route: (context) => language_page(),
    register_subscribe.route: (context) => const register_subscribe(),
    signin.route: (context) => const signin(),
    signup.route: (context) => signup(),
    ForgotPasswordScreen.route: (context) => const ForgotPasswordScreen(),
  };
}
