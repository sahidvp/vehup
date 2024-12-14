

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehup_app/serive/api_service.dart';
import 'package:vehup_app/view/home_screen/home_screen.dart';

class LoginController extends GetxController {
  // Define the TextEditingControllers for email and password
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // GlobalKey for the FormState
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // Method for form validation and login
  Future<void> login() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter both email and password");
      return;
    }

    try {
      // Call your API or service to verify credentials
      var response = await ApiService.login(email, password);
      

      if (response.isSuccessful) {
        Get.offAll(() => HomeScreen());
      } else {
        // Show an error message if login fails
        Get.snackbar("Login Failed", "Invalid email or password");
      }
    } catch (error) {
      // Handle any errors (e.g., network issues)
      Get.snackbar("Error", "An error occurred during login");
    }
  }

  @override
  void onClose() {
    // Clean up controllers when the controller is disposed
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
