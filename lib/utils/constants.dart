import 'package:flutter/material.dart';

abstract class AppColors {
  static const mainBlack = Color(0xFF000000);
  static const mainWhite = Color(0xFFFFFFFF);
  static const mainGrey = Color(0xFFCCCCCC);
  static const headerGrey = Color(0xFF808080);
}

class AppImages {
  AppImages._();

  static const String sendIcon = 'assets/images/icon_send.png';
  static const String flag = 'assets/images/flag.png';
  static const String carrefour = 'assets/images/logo/carrefour.png';
  static const String lv = 'assets/images/logo/lv.png';
  static const String mc = 'assets/images/logo/mc.png';
  static const String nike = 'assets/images/logo/nike.jpg';
  static const String pret = 'assets/images/logo/pret.png';
  static const String starbucks = 'assets/images/logo/starbucks.png';
  static const String virgin = 'assets/images/logo/virgin.png';
}

abstract class AppTextStyle {
  static const cardTextStyle = TextStyle(
      color: AppColors.mainBlack, fontSize: 18, fontWeight: FontWeight.w500);
}
