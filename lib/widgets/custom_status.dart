import 'package:flutter/material.dart';

import 'custom_circularal_image.dart';

class CustomStatus extends StatelessWidget {
  dynamic img = "";
  String name = "";

  CustomStatus({required this.img, required this.name, super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, right: 0.12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          img,
          Text(name),
        ],
      ),
    );
  }
}
