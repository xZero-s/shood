import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shood/components/default_indicator_component.dart';
import 'package:shood/models/appBanner.dart';

class SplashScreenItemComponentTest extends StatelessWidget {
  const SplashScreenItemComponentTest({
    Key? key,
    required int selectedIndex,
    required this.title,
    required this.description,
    required this.image
  }) : _selectedIndex = selectedIndex, super(key: key);

  final int _selectedIndex;
  final String title;
  final String description;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFFBFBFB),
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      decoration: TextDecoration.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      height: 1.4,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black38,
                      decoration: TextDecoration.none
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FractionallySizedBox(
                  widthFactor: 0.8,
                  child: Image.asset(
                    image,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TextButton(
                    onPressed: () => log('Skip pressed!'),
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      ...List.generate(
                        cardItemsList.length,
                        (index) =>
                          Indicator(isActive:  _selectedIndex == index ? true : false),
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => log('CardItem Button Press!'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onPrimary: Colors.black54
                    ),
                    child: const Text(
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}