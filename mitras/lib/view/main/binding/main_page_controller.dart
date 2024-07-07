// ignore_for_file: invalid_use_of_protected_member, unrelated_type_equality_checks, unnecessary_statements, constant_identifier_names

import 'package:get/get.dart';
import 'package:mitras/init/navigation/app_navigation.dart';

import '../view/model/main_nested_navigation_path.dart';
import '../view/model/navşgation_item_state.dart';

class MainPageController extends GetxController {
  var selectedIndex = 0.obs;
  var currentPageState = NavigationItemState.HOME.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;
    update([MAIN_NAVIGATION_OBSERVE_ID]);
  }

  void changeScreen(
    NavigationItemState state, {
    MainNestedNavigationType navigationType =
        MainNestedNavigationType.OFF_NAMED,
    bool isDynamicMenu = false,
    int? dynamicId,
    dynamic arguments,
  }) {
    String? path = _getPathByState(state);
    currentPageState.value = state;

    if (path != null) {
      if (navigationType == MainNestedNavigationType.OFF_NAMED) {
        switch (currentPageState.value) {
          case NavigationItemState.HOME:
            break;
          case NavigationItemState.SHOPPING:
            break;
          case NavigationItemState.CATEGORIES:
            break;
          case NavigationItemState.PROFILE:
            break;
          default:
            break;
        }

        Get.offNamed(
          path,
          id: AppNavigation.MAIN_NESTED_KEY,
          arguments: arguments,
        );
      } else if (navigationType == MainNestedNavigationType.TO_NAMED) {
        Get.toNamed(
          path,
          id: AppNavigation.MAIN_NESTED_KEY,
          arguments: arguments,
        );
      }
    }

    update([MAIN_NAVIGATION_OBSERVE_ID]);
  }

  String? _getPathByState(NavigationItemState state) {
    final routesByState = <NavigationItemState, String>{
      NavigationItemState.HOME: MainNestedNavigation.HOME,
      NavigationItemState.SHOPPING: MainNestedNavigation.SHOPPING,
      NavigationItemState.CATEGORIES: MainNestedNavigation.CATEGORY,
      NavigationItemState.PROFILE: MainNestedNavigation.PROFILE,

    };

    return routesByState[state];
  }


  static const String MAIN_NAVIGATION_OBSERVE_ID = "main_navigation_observe_id";
}

enum MainNestedNavigationType {
  OFF_NAMED,
  TO_NAMED,
}
