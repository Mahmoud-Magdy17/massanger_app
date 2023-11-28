import 'package:flutter/material.dart';
class CustomCircularalImage extends StatelessWidget {
  String img="";
  CustomCircularalImage({required this.img,super.key}){}

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(img) ,
        ),
        CircleAvatar(radius: 5,backgroundColor: Colors.green,)
      ],
    );
  }
}
