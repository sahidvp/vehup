import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/view/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primaryColor),
      home: const SplashScreen(),
    );
  }
}
