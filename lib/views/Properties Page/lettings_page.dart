import 'package:flutter/material.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';

class LattingsPage extends StatelessWidget {
  const LattingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Image(
          image: AssetImage(
            ImageAssets.smartlink,
          ),
          height: 160,
          width: 160,
        ),
      ),
      endDrawer: const CustomDrawerWidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircularProgressIndicator(),
            SizedBox(height: 50),
            Text(
              "Data not found. !",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
