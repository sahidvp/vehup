import 'package:flutter/material.dart';
import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/utils/media_query.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQueryUtil.screenWidth(context);
    return Container(
      width: screenWidth * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor,
      ),
      child: ElevatedButton(
          onPressed: () {},
          style:
              ElevatedButton.styleFrom(backgroundColor: AppColors.primaryColor),
          child: Text(
            "Login",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 16),
          )),
    );
  }
}
