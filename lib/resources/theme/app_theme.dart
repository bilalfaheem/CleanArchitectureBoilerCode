import 'package:flutter/material.dart';

class AppTheme {
  static const secondaryColor = Color(0xff777777);
  static const reminderBtnColor = Color(0xffF4F4F4);
  static const chatTextFieldColor = Color(0xffE4E4E4);
  static const borderColor = Color(0xffBBBBBB);
  static const cupertinoThumbColor = Color.fromARGB(255, 67, 212, 218);
  static const primaryColor = Color.fromARGB(255, 67, 212, 218);
  static const enableLocationColor = Color(0xff50DFFA);
  static const textColor = Color(0xff3fdcce);
  // Gradients
  static const appGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xff50EAC8),
      Color(0xff1BBFDC),
    ],
  );
  static const borderGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xff50EAC8),
      Color(0xff1CBFDD),
    ],
  );

  static const circularGradient = RadialGradient(
    tileMode: TileMode.mirror,
    // focal: Alignment.bottomRight,
    radius: 100,
    stops: [0.2, 0.2, 0.2, 0.2, 0.2],
    // transform: GradientRotation(BorderSide.strokeAlignCenter),
    colors: [
      Color(0xff1BBFDC),
      Color(0xff50EAC8),
      Color(0xff1BBFDC),
      Color(0xff50EAC8),
      Color(0xff1BBFDC),
    ],
  );

  static const bgGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xff1BBFDC),
      Color(0xff1BBFDC),
    ],
  );
}
