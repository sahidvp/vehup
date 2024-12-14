
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vehup_app/controller/login_controller.dart';
import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/utils/media_query.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginController = Get.find<LoginController>(); // Access the LoginController
    final screenWidth = MediaQueryUtil.screenWidth(context);
    return Container(
      width: screenWidth * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor,
      ),
      child: ElevatedButton(
        onPressed: () {
          // Trigger login process
          loginController.login(); // Call the login method in the controller
        },
        style: ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
        ),
      ),
    );
  }
}
