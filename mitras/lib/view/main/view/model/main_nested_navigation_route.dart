// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../init/navigation/app_navigation.dart';
import '../../../home/binding/home_page_bindings.dart';
import '../../../home/view/home_page.dart';
import 'main_nested_navigation_path.dart';

class MainNestedNavigatorRoute extends StatelessWidget {
  const MainNestedNavigatorRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Navigator(
        key: Get.nestedKey(AppNavigation.MAIN_NESTED_KEY),
        initialRoute: MainNestedNavigation.HOME,
        observers: [GetObserver((_) {}, Get.routing)],
        onGenerateRoute: (settings) {
          final routes = <String, GetPageRoute>{
            //home page
            MainNestedNavigation.HOME: GetPageRoute(
              settings: settings,
              routeName: MainNestedNavigation.HOME,
              page: () => HomePage(),
              binding: HomePageBinding(),
              transition: Transition.rightToLeft,
            ),
            MainNestedNavigation.SHOPPING: GetPageRoute(
              settings: settings,
              routeName: MainNestedNavigation.SHOPPING,
              page: () => HomePage(),
              binding: HomePageBinding(),
              transition: Transition.rightToLeft,
            ),
            MainNestedNavigation.CATEGORY: GetPageRoute(
              settings: settings,
              routeName: MainNestedNavigation.CATEGORY,
              page: () => HomePage(),
              binding: HomePageBinding(),
              transition: Transition.rightToLeft,
            ),
            MainNestedNavigation.PROFILE: GetPageRoute(
              settings: settings,
              routeName: MainNestedNavigation.PROFILE,
              page: () => HomePage(),
              binding: HomePageBinding(),
              transition: Transition.rightToLeft,
            ),
          };
          return routes[settings.name] ??
              GetPageRoute(
                settings: settings,
                routeName: MainNestedNavigation.HOME,
                page: () => HomePage(),
                binding: HomePageBinding(),
                transition: Transition.rightToLeft,
              );
        },
      ),
    );
  }
}
