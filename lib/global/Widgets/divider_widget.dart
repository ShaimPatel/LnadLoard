// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomeDividerWidget extends StatelessWidget {
  double? height, endIndent, indent, thickness;
  Color? color;

  CustomeDividerWidget(
      {Key? key,
      this.thickness,
      this.color,
      this.height,
      this.endIndent,
      this.indent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: height,
      color: color,
      endIndent: endIndent,
      indent: indent,
      thickness: thickness,
    );
  }
}
