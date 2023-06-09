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

// GridView.builder(
//                         shrinkWrap: true,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 8,
//                         ),
//                         gridDelegate:
//                             const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           childAspectRatio: 0.8,
//                           crossAxisSpacing: 20,
//                           mainAxisSpacing: 24,
//                         ),
//                         itemBuilder: (context, index) {
//                           return CategoryCard(
//                             category: categoryList[index],
//                           );
//                         },
//                         itemCount: categoryList.length,
//                       ),
