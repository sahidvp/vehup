

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/utils/app_images.dart';
import 'package:vehup_app/utils/app_textstyles.dart';
import 'package:vehup_app/utils/media_query.dart';
import 'package:vehup_app/view/login_screen/widgets/build_log_text.dart';
import 'package:vehup_app/view/login_screen/widgets/custom_buttoon.dart';
import 'package:vehup_app/view/login_screen/widgets/custom_widgets.dart';
import 'package:vehup_app/controller/login_controller.dart'; // Import the LoginController

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sH = MediaQueryUtil.getHeightPercentage(context, .10);

    // Get instance of LoginController using GetX
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: loginController
                .formKey, // Attach the form key from the controller
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: sH * 1.5),
                Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      ImagesPath.appIcon,
                      height: 75,
                    )),
                SizedBox(height: sH * .3),
                const Align(
                  alignment: Alignment.center,
                  child: Text("Login With Your Email &\n           Password",
                      style: AppTextstyles.loginText),
                ),
                SizedBox(height: sH * .2),
                const Text("Email", style: AppTextstyles.loginText),
                SizedBox(height: sH * .1),
                CustomFormField(
                  controller: loginController
                      .emailController, // Use controller from LoginController
                  isPassword: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }

                    return null;
                  },
                ),
                SizedBox(height: sH * .2),
                const Text("Password", style: AppTextstyles.loginText),
                SizedBox(height: sH * .1),
                CustomFormField(
                  controller: loginController
                      .passwordController, // Use controller from LoginController
                  isPassword: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    if (value.length < 6) {
                      return 'Password should be at least 6 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: sH * .1),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text("Forgot password ?",
                      style: AppTextstyles.loginTextTwo),
                ),
                SizedBox(height: sH * 2.1),
                const MainButton(),
                SizedBox(height: sH * .2),
                logText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

 
}
