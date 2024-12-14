import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:vehup_app/utils/app_images.dart';
import 'package:vehup_app/utils/media_query.dart';
import 'package:vehup_app/view/home_screen/home_screen.dart';
import 'package:vehup_app/view/login_screen/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screeWidth = MediaQueryUtil.screenWidth(context);
    Future.delayed(const Duration(seconds: 3), () async {
      Get.off(() => HomeScreen());
    });
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: screeWidth * .3,
        width: screeWidth * .5,
        child: SvgPicture.asset(
          ImagesPath.splashIcon,
        ),
      )),
    );
  }
}
