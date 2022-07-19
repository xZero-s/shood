import 'package:flutter/material.dart';
import 'package:shood/models/appBanner.dart';

import 'default_indicator_component.dart';

class CardItem extends StatelessWidget {
  final int id;
  final String title;
  final String description;
  final String imagePath;
  final String buttonText;

  const CardItem({Key? key, required this.id, required this.title, required this.description, required this.imagePath, required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(color: Colors.white70),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            imagePath,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.contain,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.orange,
            ),
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 15
              ),
            ),
          ),
          Text(
            description,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 10
            ),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  cardItemsList.length,
                  (index) =>
                      Indicator(isActive: id == index ? true : false),
                )
              ],
            )
        ],
      ),
    );
  }
}
