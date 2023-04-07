import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:test_app/app/util/color_pallete.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPallet.bgColor,
      body: Center(
        child: Image.asset(
          "assets/img/logo.png",
          width: 159.0.w,
          height: 30.0.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
