import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final String imagePath;

  const CardItem({Key? key, required this.id, required this.title, required this.description, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: const BoxDecoration(color: Colors.white70),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.contain,
          ),
          Text(title),
          Text(description),
          ElevatedButton(
            onPressed: () => {}, 
            child: const Text(
              ''
            )
          )
        ],
      ),
    );
  }
}
