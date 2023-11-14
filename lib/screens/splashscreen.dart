import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class splashscreen extends StatelessWidget {
  static const String initial = '/splashscreen';

  const splashscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

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
                color: Color(0xFFC9B82E),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.3),
              child: SizedBox(
                width: 407.w,
                height: 258.272.h,
                child: ClipOval(
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    color: Color(0xFFC9B82E),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 0.6),
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
              alignment: Alignment(0, -0.7),
              child: SizedBox(
                child: Image.asset(
                  "assets/images/logo1.png",
                  width: 219.w,
                  height: 202.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
