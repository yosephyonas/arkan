// ignore_for_file: camel_case_types

import 'package:arkan/screens/modules/Signup/controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/textfield.dart';

class signup extends StatelessWidget {
  signup({super.key});
  static const String route = '/signup';
  final SignupController _signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 23),
              child: Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/images/logo1.png",
                  width: ScreenUtil().setWidth(76),
                  height: ScreenUtil().setHeight(70),
                ),
              ),
            ),
            Container(
              height: 768.h,
              width: 395.w,
              color: const Color(0xFFC9B82E),
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "SIGN UP".tr,
                    style: GoogleFonts.roboto(
                      fontSize: 20.sp,
                      color: Colors.white,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Container(
                    width: 318.w,
                    height: 578.h,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          22.w,
                        ),
                      ),
                      shadows: [
                        BoxShadow(
                          color: const Color(0x3F000000),
                          blurRadius: 4.w,
                          offset: const Offset(0, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(
                            30.w,
                            30,
                            30.w,
                            0,
                          ),
                          child: Column(
                            children: [
                              CustomTextField(
                                label: "User Name".tr,
                                controller:
                                    _signupController.userNameController,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomTextField(
                                  label: 'Password'.tr,
                                  controller:
                                      _signupController.passwordController,
                                  onChanged: (value) {
                                  }),
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomTextField(
                                label: 'E-mail address'.tr,
                                controller:
                                    _signupController.emailAddressController,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                            
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomTextField(
                                label: 'First Name'.tr,
                                controller:
                                    _signupController.firstNameController,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomTextField(
                                label: 'Surname'.tr,
                                controller: _signupController.surnameController,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomTextField(
                                label: 'City/Town'.tr,
                                controller:
                                    _signupController.cityTownController,
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              CustomTextField(
                                label: 'Select country'.tr,
                                controller:
                                    _signupController.selectCountryController,
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              SizedBox(
                                width: 234.w,
                                height: 33.h,
                                child: ElevatedButton(
                                  onPressed: () {
                                    _signupController.signUp();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFFC9B82E),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                  child: Text(
                                    "Create My Account".tr,
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 25.w),
                          child: Row(
                            children: [
                              Text(
                                "There are required fields in this form marked"
                                    .tr,
                                style: GoogleFonts.roboto(
                                  fontSize: 13.sp,
                                  color: const Color(0xFF838080),
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w400,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 13.w,
                                height: 13.h,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Container(
                                    width: 11.w,
                                    height: 11.h,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Column(
                    children: [
                      Text(
                        "Already Have an account?".tr,
                        style: GoogleFonts.roboto(
                          fontSize: 16.sp,
                          color: Colors.white,
                          letterSpacing: 0,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: SizedBox(
                          width: 216.w,
                          height: 30.h,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.2),
                                  spreadRadius: ScreenUtil().setWidth(2),
                                  blurRadius: ScreenUtil().setWidth(4),
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                "Log In".tr,
                                style: GoogleFonts.roboto(
                                  fontSize: ScreenUtil().setSp(20),
                                  color: const Color(0xFFC9B82E),
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.w600,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
