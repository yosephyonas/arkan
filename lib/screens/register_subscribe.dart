// ignore_for_file: camel_case_types

import 'dart:async';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class register_subscribe extends StatelessWidget {
  static const String route = '/register_subscribe';

  const register_subscribe({Key? key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    Timer.periodic(const Duration(seconds: 4), (timer) {
      if (controller.positions.isNotEmpty && controller.page!.isFinite) {
        int nextPage = (controller.page!.toInt() + 1) % 4;
        controller.animateToPage(nextPage,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });

    controller.addListener(() {});

    return Builder(
      builder: (BuildContext context) {
        final Size screenSize = MediaQuery.of(context).size;

        return Scaffold(
          body: Container(
            color: Colors.white,
            width: 393.w,
            child: Column(
              children: [
                Container(
                  width: screenSize.width,
                  margin: EdgeInsets.only(top: screenSize.height * 0.12),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo1.png",
                      width: 167.w,
                      height: 154.h,
                    ),
                  ),
                ),
                SizedBox(
                  height: 80.h,
                ),
                Container(
                  height: screenSize.height * 0.38,
                  width: double.infinity,
                  color: Colors.white,
                  child: PageView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return ListWidget(
                          image: "assets/images/Group.png",
                          title: "Register and Subscribe".tr(),
                          description:
                              "Please register using this mobile app or website to subscribe our courses, learn and get the certification. Also we offer live training programs"
                                  .tr(),
                        );
                      } else if (index == 1) {
                        return ListWidget(
                          image: "assets/images/Group1.png",
                          title: "Learn Our Courses".tr(),
                          description:
                              "Learn and acquire knowledge from our professionally prepared course content done by our expert trainers."
                                  .tr(),
                        );
                      } else if (index == 2) {
                        return ListWidget(
                          image: "assets/images/Group4.png",
                          title: "Test Your Knowledge".tr(),
                          description:
                              "Learn and acquire knowledge from our professionally prepared course content done by our expert trainers."
                                  .tr(),
                        );
                      } else if (index == 3) {
                        return ListWidget(
                          image: "assets/images/Group5.png",
                          title: "Get Your Certificate".tr(),
                          description:
                              "Learn and acquire knowledge from our professionally prepared course content done by our expert trainers."
                                  .tr(),
                        );
                      }
                      return Container();
                    },
                  ),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 4,
                  effect: const WormEffect(
                    spacing: 7,
                    dotWidth: 12,
                    dotHeight: 12,
                    activeDotColor: Color(0xFFC9B82E),
                    dotColor: Color(0xFFC9B82E),
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                  ),
                  onDotClicked: (index) {
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 393.w,
                      height: 63.h,
                      color: Color(0xFFC9B82E),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: Center(
                          child: Text(
                            'SIGN IN'.tr(),
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontSize: 20.sp,
                              color: Colors.white,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ListWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const ListWidget({
    required this.image,
    required this.title,
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Center(
      child: SizedBox(
        width: mediaQuery.size.width,
        height: (mediaQuery.size.height * 0.485).sp,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, width: 85.w, height: 79.h),
            SizedBox(height: ScreenUtil().setSp(mediaQuery.size.height * 0.05)),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 24.sp,
                color: const Color(0xffC9B82E),
                letterSpacing: 0,
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(height: ScreenUtil().setSp(mediaQuery.size.height * 0.02)),
            SizedBox(
              width: (mediaQuery.size.width * 0.69).sp,
              height: (mediaQuery.size.height * 0.122).sp,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: description,
                      style: GoogleFonts.roboto(
                        fontSize: 15.sp,
                        color: const Color(0xff848080),
                        letterSpacing: 0,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
