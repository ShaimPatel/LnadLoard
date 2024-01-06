import 'package:flutter/material.dart';
import 'package:landloard/views/Properties%20Page/widget/international_show_data_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';

class InternationalPage extends StatelessWidget {
  const InternationalPage({super.key});

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
      body:Container(
        height: MediaQuery.of(context).size.height*1,
        width: MediaQuery.of(context).size.width,
        child: InternationalShowDataWidget(),
      ),
    );
  }
}
