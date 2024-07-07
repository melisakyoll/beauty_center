import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'init/navigation/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeft,
        getPages: AppNavigation.routes,
        initialRoute: AppNavigation.INITIAL,
        theme: ThemeData(
          useMaterial3: true,
        ),
        //initialBinding: StudentMainBinding(),
      ),
    );
  }
}
