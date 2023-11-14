import 'package:arkan/screens/home.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class signin extends StatelessWidget {
  static const String route = '/signin';

  const signin({Key? key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: const Color(0xffc9b82e),
        height: 859.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(160.w, 70.h, 0, 0),
              child: Text(
                "SIGN IN".tr(),
                style: GoogleFonts.roboto(
                  fontSize: mediaQuery.size.width * 0.055,
                  color: Colors.white,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.02),
              child: Container(
                width: double.infinity,
                height: 191.h,
                decoration: const BoxDecoration(
                  color: Color(0xffe3d988),
                ),
                child: Image.asset(
                  "assets/images/logo1.png",
                  width: 167.sp,
                  height: 154.sp,
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Column(
              children: [
                Text(
                  "By using our services, you agree to Terms and Privacy Statement"
                      .tr(),
                  style: GoogleFonts.roboto(
                    fontSize: 16.sp,
                    color: Colors.white,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: 318.w,
                  height: 325.h,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.w, 40.h, 30.w, 10.h),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: "User Name".tr(),
                            labelStyle: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              color: const Color(0xff848080),
                              letterSpacing: 0,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0,
                            ),
                            isDense: true,
                            suffixIcon: Image.asset(
                              "assets/images/Vector1.png",
                              width: 24.w,
                              height: 30.h,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Password'.tr(),
                            labelStyle: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              color: const Color(0xff848080),
                              letterSpacing: 0,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.none,
                            ),
                            enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            focusedBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFBDBDBD),
                              ),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 0,
                            ),
                            isDense: true,
                            suffixIcon: Image.asset(
                              "assets/images/Group2.png",
                              width: 24.sp,
                              height: 30.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        SizedBox(
                          width: 250.w,
                          height: 37.h,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => home()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFC9B82E),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: Text(
                              "Sign In".tr(),
                              style: GoogleFonts.roboto(
                                fontSize: 16.sp,
                                color: Colors.white,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.h),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, '/ForgotPasswordScreen');
                          },
                          child: Text(
                            "Lost your password?".tr(),
                            style: GoogleFonts.roboto(
                              fontSize: 16.sp,
                              color: const Color(0xffc9b82e),
                              letterSpacing: 0,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15.h),
            Column(
              children: [
                Text(
                  "Don't have an account?".tr(),
                  style: GoogleFonts.roboto(
                    fontSize: 16.h,
                    color: Colors.white,
                    letterSpacing: 0,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(height: 15.h),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                    width: 250.w,
                    height: 37.h,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        elevation: 4,
                      ),
                      child: Text(
                        'Register'.tr(),
                        style: GoogleFonts.roboto(
                          fontSize: 20.sp,
                          color: const Color(0xffc9b82e),
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
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
    );
  }
}
