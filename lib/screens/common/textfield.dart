import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged; // Define onChanged

  const CustomTextField({
    super.key,
    required this.label,
    required this.controller,
    this.onChanged, // Add this line
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        TextField(
          controller: controller,
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: GoogleFonts.roboto(
              fontSize: 14.sp,
              color: Color(0xff848080),
              letterSpacing: 0,
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.none,
            ),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 0,
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffBDBDBD),
                width: 1,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xffBDBDBD),
                width: 0.5,
              ),
            ),
          ),
        ),
        if (label != 'City/Town')
          Positioned(
            bottom: 4,
            right: Directionality.of(context) == TextDirection.ltr ? 0 : null,
            left: Directionality.of(context) == TextDirection.rtl ? 0 : null,
            child: Container(
              width: 13,
              height: 13,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: Center(
                child: Container(
                  width: 11,
                  height: 11,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
