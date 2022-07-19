import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:shood/components/default_indicator_component.dart';
import 'package:shood/models/appBanner.dart';

class SplashScreenTest extends StatefulWidget {
  const SplashScreenTest({ Key? key }) : super(key: key);

  @override
  State<SplashScreenTest> createState() => _SplashScreenTestState();
}

class _SplashScreenTestState extends State<SplashScreenTest> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Image.asset(
              'assets/images/animatedIllustrationCardSplashOneTime.gif',
              fit: BoxFit.contain,
            ),
          ),
          Flexible(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Text(
                  'Titolo Card',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.black87,
                    decoration: TextDecoration.none
                  ),
                ),
                Text(
                  'descrizione card',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black38,
                    decoration: TextDecoration.none
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
              primary: Colors.blue,
              onPrimary: Colors.grey
            ),
            child: const Text(
              'Button',
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
    );
  }
}