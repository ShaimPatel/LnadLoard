import 'package:flutter/material.dart';
import 'package:landloard/res/assets/image_assets.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        color: Colors.white,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Image.asset(
            ImageAssets.loader,
            height: 50.0,
            width: 50.0,
          ),
        ),
      ),
    );
  }
}
