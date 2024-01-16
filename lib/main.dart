import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:landloard/Provider/properties_provider.dart';
import 'package:landloard/Provider/slider_provider.dart';
import 'package:landloard/res/colors/app_color.dart';
import 'package:landloard/views/splash_page.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
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
            title: 'Landloard',
            theme: ThemeData(primarySwatch: AppColor.greenColor),
            home: const SplashPage()));
  }
}
