class Trip {
  final String title;
  final List<String> photoUrls;
  final int price;
  final double rating;
  final int reviews;
  final bool isPrivate;

  Trip({
    required this.title,
    required this.photoUrls,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.isPrivate,
  });
}
