import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitras/init/theme/theme_services.dart';

import '../../../../init/navigation/app_navigation.dart';

class HomePageBeautyCard extends StatelessWidget {
  HomePageBeautyCard({super.key, required this.imagePath});

  String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(AppNavigation.HOME_PAGE_DETAIL),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(
                    0.5), // Fotoğrafın karanlık olması için overlay
              ),
              Positioned(
                bottom: 60,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cilt Bakımı',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'Kil Maskesi + Karbon Peeling',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                left: 20,
                child: Row(
                  children: [
                    Container(
                      height: 25.h,
                      width: 25.h,
                      decoration: BoxDecoration(
                          color:
                              ThemeService.instance.initialTheme.primaryColor,
                          borderRadius: BorderRadius.circular(30.r)),
                      child: const Icon(
                        Icons.store,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      'Selen Center',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  height: 25.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          ThemeService.instance.initialTheme.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.r),
                      ),
                    ),
                    child: Text(
                      'Randevu Al',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
