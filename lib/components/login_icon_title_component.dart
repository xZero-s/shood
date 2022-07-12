import 'package:flutter/material.dart';

class IconTitle extends StatelessWidget {
  final String title;
  final String uriImage;

  const IconTitle({ Key? key, required this.title, required this.uriImage }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          margin: const EdgeInsets.only(bottom: 25),
          decoration: const BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/placeholder_image_logo.png'),
              fit: BoxFit.cover
            ),
          )
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 30,
          ),
        ),
      ],
    );
  }
}