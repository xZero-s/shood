import 'package:flutter/material.dart';

class IconTitle extends StatelessWidget {
  final String title;
  final String uriImage;

  const IconTitle({ Key? key, required this.title, required this.uriImage }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: const EdgeInsets.all(100.0),
            decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/placeholder_image_logo.png')))),
        Text(title),
      ],
    );
  }
}
