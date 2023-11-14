// ignore_for_file: camel_case_types

import 'package:arkan/screens/modules/course_category/controller/course_category_contoller.dart';
import 'package:arkan/screens/modules/courses/controller/courses_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class language_page extends StatelessWidget {
  static const String route = '/language_page';

  final CourseCategoryController controller =
      Get.put(CourseCategoryController());

  final CategoryDetailController controller2 =
      Get.put(CategoryDetailController());

  language_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final mediaQuery = MediaQuery.of(context);

    return SafeArea(
      child: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Stack(
          children: [
            Container(
              color: Colors.white,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: 393.w,
                height: 320.h,
                color: const Color(0xFFC9B82E),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.3),
              child: SizedBox(
                width: 407.w,
                height: 258.272.h,
                child: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: const Color(0xFFC9B82E),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.001),
              child: Container(
                width: 318.w,
                height: 189.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    mediaQuery.size.width * 0.06,
                  ),
                  border: Border.all(color: const Color(0xFFC9B82E)),
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black.withOpacity(0.3),
                    ],
                  ),
                ),
                child: Container(
                  width: 318.w,
                  height: 189.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      mediaQuery.size.width * 0.06,
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/Group3.png",
                            width: mediaQuery.size.width * 0.2,
                            height: mediaQuery.size.width * 0.2,
                          ),
                        ),
                        SizedBox(
                          height: mediaQuery.size.height * 0.04,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.setLocale(const Locale('en', 'US'));
                                Get.find<CourseCategoryController>()
                                    .setSelectedLanguage('EN');
                                Get.find<CategoryDetailController>()
                                    .setSelectedCourseLanguage('EN');

                                Navigator.pushNamed(
                                    context, '/register_subscribe');
                              },
                              child: Container(
                                width: mediaQuery.size.width * 0.248,
                                height: mediaQuery.size.height * 0.04,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC9B82E),
                                  borderRadius: BorderRadius.circular(
                                    mediaQuery.size.width * 0.05,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'English',
                                    style: GoogleFonts.roboto(
                                      fontSize: mediaQuery.size.width * 0.036,
                                      color: Colors.white,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                context.setLocale(const Locale('ar', 'AE'));
                                Get.find<CourseCategoryController>()
                                    .setSelectedLanguage('AR');

                                Get.find<CategoryDetailController>()
                                    .setSelectedCourseLanguage('AR');
                                Navigator.pushNamed(
                                    context, '/register_subscribe');
                              },
                              child: Container(
                                width: mediaQuery.size.width * 0.248,
                                height: mediaQuery.size.height * 0.04,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFC9B82E),
                                  borderRadius: BorderRadius.circular(
                                    mediaQuery.size.width * 0.05,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      spreadRadius: 2,
                                      blurRadius: 4,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: Text(
                                    'عربي',
                                    style: GoogleFonts.roboto(
                                      fontSize: mediaQuery.size.width * 0.036,
                                      color: Colors.white,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.none,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.6),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/language_page');
                },
                child: SizedBox(
                  child: Image.asset(
                    "assets/images/Frame7.png",
                    width: 160.27.w,
                    height: 164.382.h,
                  ),
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, -0.7),
              child: SizedBox(
                child: Image.asset(
                  "assets/images/logo1.png",
                  width: 167.w,
                  height: 154.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
