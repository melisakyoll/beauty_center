import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitras/view/home/view/home_detail_page.dart';
import '../../../init/navigation/app_navigation.dart';
import '../../home/binding/home_page_bindings.dart';
import '../../home/view/home_page.dart';
import 'nested_navigation.dart';

class MainNestedNavigator extends StatelessWidget {
  const MainNestedNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Navigator(
        key: Get.nestedKey(AppNavigation.MAIN_NESTED_KEY),
        initialRoute: AppNavigation.HOME_PAGE,
        observers: [GetObserver((obs) {}, Get.routing)],
        onGenerateRoute: (settings) {
          final routes = <String, GetPageRoute>{
            AppNavigation.HOME_PAGE: GetPageRoute(
              settings: settings,
              routeName:  AppNavigation.HOME_PAGE,
              page: () => HomePage(),
              binding: HomePageBinding(),
            ),
            AppNavigation.HOME_PAGE_DETAIL: GetPageRoute(
              settings: settings,
              routeName: AppNavigation.HOME_PAGE_DETAIL,
              page: () => HomePageDetail(),
              //binding: HomePageBinding(),
            ),
          };
          return routes[settings.name] ??
              GetPageRoute(
                settings: settings,
                routeName: AppNavigation.HOME_PAGE,
                page: () => HomePage(),
                transition: Transition.rightToLeft,
              );
        },
      ),
    );
  }
}
