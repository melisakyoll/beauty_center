import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitras/init/theme/theme_services.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String label;

  const CategoryCard({super.key, required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: EdgeInsets.only(left:8.sp),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                color:ThemeService.instance.baseTheme.categoryBackgroundColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(image,width: 25.sp,height: 25.sp,)
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: GoogleFonts.lato(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}