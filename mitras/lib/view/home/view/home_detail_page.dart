import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../init/theme/theme_services.dart';

class HomePageDetail extends StatefulWidget {
  HomePageDetail({super.key});

  @override
  State<HomePageDetail> createState() => _HomePageDetailState();

}

class _HomePageDetailState extends State<HomePageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeService.instance.baseTheme.whiteColor,
      body: Container(
        child: Center(
          child: IconButton(
            onPressed: () {
             Get.back();
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
      ),
    );
  }
}
