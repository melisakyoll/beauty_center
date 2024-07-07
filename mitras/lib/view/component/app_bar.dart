import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mitras/init/assets/assets_path.dart';
import 'package:mitras/init/theme/theme_services.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemeService.instance.baseTheme.primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ), // To account for the status bar
      child: Column(
        children: [
          Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                child: Image.asset(
                  AppAssetsPath.APP_BAR_BACKGROUND,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Location',
                              style: GoogleFonts.lato(
                                color: ThemeService.instance.baseTheme.whiteColor,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on_rounded,
                                  color: ThemeService.instance.baseTheme.whiteColor,
                                  size: 24.sp,
                                ),
                                SizedBox(width: 10.w),
                                Text(
                                  'Kadıköy/İstanbul',
                                  style: GoogleFonts.lato(
                                    color: ThemeService.instance.baseTheme.whiteColor,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 25.sp,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: ThemeService.instance.baseTheme.whiteColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: ThemeService.instance.baseTheme.greyTextColor,
                                ),
                                const SizedBox(width: 8),
                                const Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          decoration: BoxDecoration(
                            color: ThemeService.instance.baseTheme.whiteColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: SizedBox(
                            height: 35.h,
                            width: 15.h,
                            child: Center(
                              child: SizedBox(
                                height: 25.h,
                                child: Image.asset(
                                  AppAssetsPath.APP_BAR_FILTER_ICON,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
