import 'dart:ui' show PointerDeviceKind;
import 'package:flutter/material.dart';
import 'package:e_commerce_flutter/core/app_theme.dart';
import 'package:e_commerce_flutter/src/view/screen/welcome_back_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
        },
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeBackPage(),
      theme: AppTheme.lightAppTheme,
    );
  }
}
