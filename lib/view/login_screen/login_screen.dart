import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/utils/app_images.dart';
import 'package:vehup_app/utils/app_textstyles.dart';
import 'package:vehup_app/utils/media_query.dart';
import 'package:vehup_app/view/login_screen/widgets/custom_buttoon.dart';
import 'package:vehup_app/view/login_screen/widgets/custom_widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sH = MediaQueryUtil.getHeightPercentage(context, .10);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
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
            Align(
              alignment: Alignment.center,
              child: Text("Login With Your Email &\n           Password",
                  style: AppTextstyles.loginText),
            ),
            SizedBox(
              height: sH * .2,
            ),
            Text(
              "Email",
              style: AppTextstyles.loginText,
            ),
            SizedBox(height: sH * .1),
            CustomFormField(
              isPassword: false,
            ),
            SizedBox(height: sH * .2),
            Text(
              "Password",
              style: AppTextstyles.loginText,
            ),
            SizedBox(height: sH * .1),
            CustomFormField(
              isPassword: true,
            ),
            SizedBox(height: sH * .1),
            Align(
              alignment: Alignment.centerRight,
              child:
                  Text("Forgot password ?", style: AppTextstyles.loginTextTwo),
            ),
            SizedBox(height: sH * 2.1),
            MainButton(),
            SizedBox(
              height: sH * .2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                Text(
                  "Register",
                  style: AppTextstyles.loginTextTwo,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
