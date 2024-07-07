import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../init/theme/theme_services.dart';

class BottomCustomNavbar extends StatelessWidget {
  final int currentPage;
  final void Function(int index) onTap;

  const BottomCustomNavbar({
    super.key,
    this.currentPage = 0,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(
                color: ThemeService.instance.baseTheme.categoryTextColor
                    .withOpacity(0.1),
                width: 1)),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: currentPage,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedLabelStyle: GoogleFonts.roboto(
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
          color: ThemeService.instance.baseTheme.primaryColor,
        ),
        selectedItemColor: ThemeService.instance.baseTheme.primaryColor,
        unselectedLabelStyle: GoogleFonts.roboto(
          fontSize: 10.sp,
          color: ThemeService.instance.baseTheme.categoryTextColor
              .withOpacity(0.5),
          fontWeight: FontWeight.w600,
        ),
        unselectedIconTheme: IconThemeData(
          color: ThemeService.instance.baseTheme.categoryTextColor
              .withOpacity(0.5),
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 20.sp,
            ),
            label: "Anasayfa",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 20.sp,
            ),
            label: "Sepet",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code,
              size: 20.sp,
            ),
            label: "Kategori",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 20.sp,
            ),
            label: "Profil",
          ),

        ],
      ),
    );
  }
}
