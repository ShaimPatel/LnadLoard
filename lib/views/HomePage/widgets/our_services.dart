// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:landloard/global/Widgets/divider_widget.dart';

import '../../../res/colors/app_color.dart';

class OurServiceWidget extends StatefulWidget {
  final IconData icon;
  final String title, subtitle;
  final Function onPres;
  const OurServiceWidget({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPres,
  }) : super(key: key);

  @override
  State<OurServiceWidget> createState() => _OurServiceWidgetState();
}

class _OurServiceWidgetState extends State<OurServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(
          color: AppColor.whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 130,
              color: AppColor.blackColor,
            ),
            Text(
              widget.title,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColor.greenColor),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.subtitle,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColor.blackColor),
              ),
            ),
            const SizedBox(height: 25),
            GestureDetector(
              onTap: widget.onPres(),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Learn More",
                  style: TextStyle(
                    fontSize: 18.0,
                    decoration: TextDecoration.none,
                    color: AppColor.blueColor.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const CustomeDividerWidget(
              height: 2,
              thickness: 2,
              color: AppColor.greenColor,
              indent: 20,
              endIndent: 10,
            )
          ],
        ),
      ),
    );
  }
}
