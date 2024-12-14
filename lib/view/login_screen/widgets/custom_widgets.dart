import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/utils/app_images.dart';
import 'package:vehup_app/utils/app_textstyles.dart';

class CustomFormField extends StatelessWidget {
  final bool isPassword;
  const CustomFormField({
    super.key,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: AppColors
            .secondaryColor, // Background color inside the TextFormField
        borderRadius:
            BorderRadius.circular(15), // Border radius for rounded corners
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            10), // Ensures clipping is applied to the TextFormField
        child: TextFormField(
          obscureText: isPassword,
          decoration: InputDecoration(
            suffixIcon: isPassword
                ? Padding(
                    padding: EdgeInsets.only(
                        left: 10, top: 13, bottom: 5, right: 10),
                    child: SvgPicture.asset(ImagesPath.eyeIcon))
                : SizedBox.shrink(),
            prefixIcon: Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 13, bottom: 5, right: 10),
                child: SvgPicture.asset(isPassword
                    ? ImagesPath.passwordIcon
                    : ImagesPath.emailIcon)),
            hintText: isPassword ? "Enter your password" : "Enter your email",
            contentPadding: EdgeInsets.only(left: 12, top: 15, bottom: 5),
            hintStyle: AppTextstyles.hintText,
            fillColor: AppColors.secondaryColor,
            filled: true,
            border: InputBorder.none, // No border around the TextFormField
          ),
        ),
      ),
    );
  }
}
