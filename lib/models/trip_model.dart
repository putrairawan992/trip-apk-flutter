import 'package:besttrips/models/review_model.dart';

class Trip {
  final String title;
  final List<String> photoUrls;
  final int price;
  final double rating;
  final int reviews;
  final bool isPrivate;
  final List<Review> reviewList;
  final String summary;
  final String includeExclude;
  final String terms;

  Trip({
    required this.title,
    required this.photoUrls,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.isPrivate,
    required this.reviewList,
    required this.summary,
    required this.includeExclude,
    required this.terms,
  });
}
