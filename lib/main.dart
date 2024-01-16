import 'package:flutter/material.dart';
import 'package:landloard/Provider/properties_provider.dart';
import 'package:landloard/Provider/slider_provider.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => PropertiesProvider()),
          ChangeNotifierProvider(create: (_) => SliderProvider()),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: ThemeData(primarySwatch: AppColor.greenColor),
            home: const SplashPage()));
  }
}
