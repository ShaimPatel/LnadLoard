import 'dart:async';

import 'package:flutter/material.dart';
import 'package:landloard/res/assets/image_assets.dart';
import 'package:landloard/res/components/constrians.dart';
import 'package:landloard/views/HomePage/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  // late FlutterGifController controller1;

  @override
  void initState() {
    // controller1 = FlutterGifController(vsync: this);
    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   controller1.repeat(
    //     min: 0,
    //     max: 40,
    //     period: const Duration(seconds: 3),
    //   );
    // });
    Timer(
      const Duration(seconds: 4),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const HomePage(),
        ),
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    // controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: customGradient1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  ImageAssets.smartlink,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
