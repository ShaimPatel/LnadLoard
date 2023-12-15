import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:landloard/views/Properties%20Page/widget/properties_data_widget.dart';

import '../../global/AppBar/drawer_widget.dart';
import '../../res/assets/image_assets.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({super.key});

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        setState(() {
          _isVisible = true;
        });
      } else if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        setState(() {
          _isVisible = false;
        });
      }
    });
  }

  void scrollTo() {
    _scrollController.animateTo(0.0,
        duration: const Duration(milliseconds: 300), curve: Curves.bounceInOut);
  }

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
        floatingActionButton: _isVisible
            ? FloatingActionButton(
                onPressed: scrollTo,
                child: const Icon(Icons.arrow_upward),
              )
            : null,
        body: const PropertiesDataWidget());
  }
}
