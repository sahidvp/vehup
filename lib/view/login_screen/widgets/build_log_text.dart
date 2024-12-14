 import 'package:flutter/material.dart';
import 'package:vehup_app/utils/app_textstyles.dart';

Row logText() {
    return const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  Text("Register", style: AppTextstyles.loginTextTwo)
                ],
              );
  }