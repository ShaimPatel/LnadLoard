// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../res/colors/app_color.dart';
import '../../Service Page/service_page.dart';

class OurServiceWidget extends StatefulWidget {
  final String image;
  final String title, subtitle;
  const OurServiceWidget({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  State<OurServiceWidget> createState() => _OurServiceWidgetState();
}

class _OurServiceWidgetState extends State<OurServiceWidget> {
  bool _isFlat = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedPhysicalModel(
      duration: const Duration(milliseconds: 500),
      curve: Curves.decelerate,
      elevation: _isFlat ? 0 : 9.0,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.circular(10),
      shadowColor: AppColor.blackColor,
      color: Colors.white,
      child: InkWell(
        onTap: () {
          setState(() {
            _isFlat = !_isFlat;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: AppColor.whiteColor,
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100),
                const SizedBox(height: 10),
                Text(widget.title,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColor.greenColor)),
                const SizedBox(height: 10),
                Text(
                  widget.subtitle,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColor.blackColor),
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ServicePage()));
                  },
                  child: Text(
                    "Learn More",
                    style: TextStyle(
                      fontSize: 18.0,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500,
                      color: AppColor.blueColor.withOpacity(0.9),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
