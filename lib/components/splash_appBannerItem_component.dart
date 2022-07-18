import 'package:flutter/material.dart';
import '../models/appBanner.dart';
import 'splash_card_item_component.dart';

class BannerItem extends StatelessWidget {
  // final AppBanner appBanner;
  final CardItem cardItem;

  const BannerItem({
    Key? key,
    // required this.appBanner
    required this.cardItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          // image: NetworkImage(appBanner.thumbnailUrl)
          image: AssetImage(cardItem.imagePath)
        )
      ),
    );
  }
}