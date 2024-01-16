// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:landloard/res/colors/app_color.dart';

class CalculatorWidget extends StatefulWidget {
  final TextEditingController controller;
  final String title, hintText;
  final FocusNode? focusNode;
  const CalculatorWidget({
    Key? key,
    required this.controller,
    required this.title,
    required this.hintText,
    this.focusNode,
  }) : super(key: key);

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: AppColor.whiteColor,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.maxFinite,
            child: TextField(
              focusNode: widget.focusNode,
              controller: widget.controller,
              keyboardType: TextInputType.number,
              dragStartBehavior: DragStartBehavior.down,
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: const OutlineInputBorder(),
                fillColor: AppColor.whiteColor,
                filled: true,
              ),
              onChanged: (text) {
                debugPrint('Entered text: $text');
              },
            ),
          ),
        ],
      ),
    );
  }
}
