import 'package:flutter/material.dart';

import 'custom_circularal_image.dart';

class CustomChat extends StatelessWidget {
  dynamic img = "";
  String name = "";
  String chat = "";

  CustomChat(
      {required this.img, required this.name, required this.chat, super.key}) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 16),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white54,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: img
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
              Text(chat,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
