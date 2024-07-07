import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../init/assets/assets_path.dart';
import '../../../init/theme/theme_services.dart';
import '../controller/home_page_controller.dart';
import 'components/beauty_card.dart';
import 'components/categories_grid.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

  final List<String> photos = [
    AppAssetsPath.HOME_BEAUTY_PAGE_ONE,
    AppAssetsPath.HOME_BEAUTY_PAGE_TWO,
    AppAssetsPath.HOME_BEAUTY_PAGE_THREE,
    AppAssetsPath.HOME_BEAUTY_PAGE_FOUR,
  ];
  late final HomePageController controller = Get.put(HomePageController());
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.instance.baseTheme.whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Öne Çıkan Hizmetler",
                      style: GoogleFonts.lato(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: ThemeService.instance.baseTheme.categoryTextColor,
                      ),
                    ),
                    Text(
                      "Tümü",
                      style: GoogleFonts.lato(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w700,
                        color: ThemeService.instance.baseTheme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: Get.height * 0.25,
                child: CarouselSlider.builder(
                  itemCount: widget.photos.length,
                  itemBuilder: (context, index, realIndex) {
                    return HomePageBeautyCard(
                      imagePath: widget.photos[index],
                    );
                  },
                  options: CarouselOptions(
                    viewportFraction: 1,
                    height: Get.height * 0.3,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      widget.controller.currentPageIndex.value = index;
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                ),
                alignment: Alignment.center,
                child: Obx(() => AnimatedSmoothIndicator(
                  activeIndex: widget.controller.currentPageIndex.value,
                  count: widget.photos.length,
                  effect: WormEffect(
                    spacing: 10,
                    dotWidth: 13,
                    dotHeight: 13,
                    activeDotColor: ThemeService.instance.baseTheme.primaryColor,
                    dotColor: ThemeService.instance.baseTheme.greyTextColor,
                  ),
                )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Kategoriler',
                          style: GoogleFonts.lato(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Tümü',
                          style: GoogleFonts.lato(
                            color: ThemeService.instance.baseTheme.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 130.h,
                      child: const CategoriesGrid(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'İşletmeler',
                          style: GoogleFonts.lato(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'Tümü',
                          style: GoogleFonts.lato(
                            color: ThemeService.instance.baseTheme.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    SizedBox(
                      height: 130.h,
                      child: const CategoriesGrid(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
