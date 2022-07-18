import 'package:flutter/material.dart';
import '../components/default_indicator_component.dart';
import '../components/splash_appBannerItem_component.dart';
import '../models/appBanner.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
        children: <Widget>[
          Container(
            height: 700,
            margin: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 30.0),
            decoration: const BoxDecoration(color: Colors.green),
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              controller: PageController(viewportFraction: 0.7),
              itemCount: cardItemsList.length,
              itemBuilder: ((context, index) {
                // return BannerItem(appBanner: cardItemsList[index]);
                return BannerItem(cardItem: cardItemsList[index]);
              }),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                cardItemsList.length,
                (index) =>
                    Indicator(isActive: _selectedIndex == index ? true : false),
              )
            ],
          )
        ],
      ),
    );
  }
}
