import 'package:flutter/material.dart';
import 'package:landloard/global/AppBar/drawer_widget.dart';
import 'package:landloard/res/assets/image_assets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Image(
          image: AssetImage(
            ImageAssets.smartlink,
          ),
          height: 160,
          width: 160,
        ),
      ),
      endDrawer: const CustomDrawerWidget(),
      body: Container(
        color: Colors.red,
      ),
    );
  }
}
