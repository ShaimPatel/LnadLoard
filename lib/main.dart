import 'package:flutter/material.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppColor.greenColor,
      ),
      home: const SplashPage(),
    );
  }
}
