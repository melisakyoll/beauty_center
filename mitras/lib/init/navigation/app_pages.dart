import 'package:get/get.dart';
import 'package:mitras/view/main/view/main_page_screen.dart';

import '../../view/home/binding/home_page_bindings.dart';
import '../../view/home/view/home_detail_page.dart';
import '../../view/home/view/home_page.dart';
import '../../view/splash/bindings/splash_binding.dart';
import '../../view/splash/view/splash_page.dart';

part 'app_routes.dart';

class AppNavigation {
  AppNavigation._();

  static const INITIAL = AppRoutes.INITIAL;

  static final List<GetPage> routes = [
    ///auth routes
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
      transition: Transition.rightToLeft,
    ),

    GetPage(
      name: _Paths.MAIN_PAGE,
      page: () =>  MainPageScreen(),
       //binding: (),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => HomePage(),
      binding: HomePageBinding(),
      transition: Transition.rightToLeft,
    ),
    GetPage(
      name: _Paths.HOME_PAGE_DETAIL,
      page: () => HomePageDetail(),
      binding: HomePageBinding(),
      transition: Transition.rightToLeft,
    ),
  ];
}
