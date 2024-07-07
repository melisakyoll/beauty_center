import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mitras/view/component/app_bar.dart';
import '../../component/bottom_navigation_bar.dart';
import '../binding/main_page_controller.dart';
import 'main_nested_navigator.dart';
import 'model/navşgation_item_state.dart';

class MainPageScreen extends GetView<MainPageController> {
  MainPageScreen({super.key});

  @override
  late final MainPageController controller = Get.put(MainPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(160.0), // Adjust the height as needed
        child: CustomAppBar(),
      ),
      body: const MainNestedNavigator(),
      bottomNavigationBar: GetBuilder<MainPageController>(
        id: MainPageController.MAIN_NAVIGATION_OBSERVE_ID,
        init: controller,
        builder: (_) => BottomCustomNavbar(
          currentPage: controller.currentPageState.value.index <= 4
              ? controller.currentPageState.value.index
              : 4,
          onTap: (index) {
            controller.changeScreen(NavigationItemState.values[index],
                navigationType: MainNestedNavigationType.OFF_NAMED);
          },
        ),
      ),
    );
  }
}
