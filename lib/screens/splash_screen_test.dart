import 'package:flutter/material.dart';
import 'package:shood/components/splash_screen_item_component_test.dart';

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
      child: SplashScreenItemComponentTest(
        selectedIndex: _selectedIndex, 
        title: 'Design System', 
        description: 'Based on the estabilished wireframes and after user testing sessions, we have started building a dedicated Design System. That is both scalable and flexible.', 
        image: 'assets/images/animatedIllustrationCardSplash.gif' // choose one time or infinity loop
      ),
    );
  }
}