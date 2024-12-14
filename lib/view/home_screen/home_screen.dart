

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:vehup_app/utils/app_colors.dart';
import 'package:vehup_app/utils/app_images.dart';
import 'package:vehup_app/view/home_screen/widget/buid_grid.dart';


class HomeScreen extends StatelessWidget {
  

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.scaffoldColor,
        actions: [SvgPicture.asset(ImagesPath.bellIcon)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buidGrid(),
      ),
    );
  }

 
}
