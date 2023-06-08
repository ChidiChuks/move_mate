class Category {
  String freightName;
  String subtitle;
  String thumbnail;

  Category({
    required this.freightName,
    required this.subtitle,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    freightName: 'Ocean freight',
    subtitle: 'International',
    thumbnail: 'assets/move_logo.png',
  ),
  Category(
    freightName: 'Cargo freight',
    subtitle: 'Reliable',
    thumbnail: 'assets/move_logo.png',
  ),
  Category(
    freightName: 'Air freight',
    subtitle: 'International',
    thumbnail: 'assets/move_logo.png',
  ),
];
