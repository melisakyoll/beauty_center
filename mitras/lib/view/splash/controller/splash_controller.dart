// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../../init/navigation/app_navigation.dart';

class SplashPageController extends GetxController {
  Dio dio = Dio();

  @override
  void onInit() {
    super.onInit();
    _navigateMainPage();
  }

  void _navigateMainPage() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      String path = AppNavigation.MAIN_PAGE;
      Get.offAllNamed(path);
    });
  }

  static const String BODY_OBSERVE_ID = "body_observe_id";
}
