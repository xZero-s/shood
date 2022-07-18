import '../components/splash_card_item_component.dart';

class AppBanner {
  final int id;
  final String title;
  final String thumbnailUrl;

  AppBanner(this.id, this.title, this.thumbnailUrl);
}

// Sample data
/* List<AppBanner> appBannerList = [
  AppBanner(1, 'Title', 'https://picsum.photos/id/1/400/300'),
  AppBanner(2, 'Title', 'https://picsum.photos/id/1/400/300'),
  AppBanner(3, 'Title', 'https://picsum.photos/id/1/400/300'),
]; */

List<CardItem> cardItemsList = [
  const CardItem(id: 1, title: 'Title 1', description: 'Description 1', imagePath: 'assets/images/animatedIllustrationCardSplashOneTime.gif'),
  const CardItem(id: 2, title: 'Title 2', description: 'Description 2', imagePath: 'assets/images/animatedIllustrationCardSplash.gif'),
  const CardItem(id: 3, title: 'Title 3', description: 'Description 3', imagePath: ''),
];
