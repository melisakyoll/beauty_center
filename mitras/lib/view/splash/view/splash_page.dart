import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash_controller.dart';

class SplashScreen extends GetView<SplashPageController>  {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:GetBuilder<SplashPageController>(
        init: controller,
        id: SplashPageController.BODY_OBSERVE_ID,
        builder: (controller) {
          return defaultSplash();
        },
      ),
    );
  }

  Widget defaultSplash() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Get.width * 0.3),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
