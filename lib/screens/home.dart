import 'package:arkan/screens/modules/course_category/view/courses_category_view.dart';
import 'package:arkan/screens/account.dart';
import 'package:arkan/screens/training_event.dart';
import 'package:arkan/screens/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
     courses(),
    const training_event(),
    const wishlist(),
    const account(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        height: 74,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Container(
                  width: 32.h,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bottom4.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              label: 'COURSES',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Container(
                  width: 32.h,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bottom3.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              label: 'TRAINING EVENTS',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Container(
                  width: 32.h,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/bottom1.png',
                      ),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              label: 'WISHLIST',
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: Container(
                  width: 32..h,
                  height: 32.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bottom2.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              label: 'ACCOUNT',
            ),
          ],
          selectedItemColor:
              const Color(0xFFC9B82E), // Customize the selected item color
          unselectedItemColor: const Color(0xFFC9B82E),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,

          showSelectedLabels: true, // Show labels for selected items
          showUnselectedLabels: true, // Show labels for unselected items
          type: BottomNavigationBarType.fixed, // Disable shifting effect
          selectedLabelStyle: GoogleFonts.roboto(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.roboto(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
