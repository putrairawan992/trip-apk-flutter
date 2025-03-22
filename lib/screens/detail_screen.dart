import 'package:besttrips/models/trip_model.dart';
import 'package:besttrips/utils/function.dart';
import 'package:besttrips/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:easy_image_viewer/easy_image_viewer.dart';

class DetailScreen extends StatelessWidget {
  final Trip trip;
  const DetailScreen({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(trip.title,
            style: boldTextStyle.copyWith(
              color: whiteColor,
              fontSize: 18,
            )),
        backgroundColor: mainColor,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 250,
            child: PageView.builder(
              itemCount: trip.photoUrls.length,
              itemBuilder: (context, index) {
                final imageUrl = trip.photoUrls[index];
                return GestureDetector(
                  onTap: () {
                    showImageViewerPager(
                      context,
                      MultiImageProvider(
                        trip.photoUrls.map((url) => Image.network(url).image).toList(),
                        initialIndex: index,
                      ),
                      swipeDismissible: true,
                      doubleTapZoomable: true,
                    );
                  },
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              trip.title,
              style: boldTextStyle.copyWith(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.star, color: Colors.orange, size: 18),
                SizedBox(width: 4),
                Text(
                  '${trip.rating} (${trip.reviews})',
                  style: regularTextStyle.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Summary',
              style: boldTextStyle.copyWith(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              trip.summary,
              style: regularTextStyle.copyWith(),
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Include / Exclude',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              trip.includeExclude,
              style: regularTextStyle.copyWith(),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Terms & Conditions',
              style: boldTextStyle.copyWith(fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Text(
              trip.terms,
              style: regularTextStyle.copyWith(),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Reviews',
              style: boldTextStyle.copyWith(fontSize: 18),
            ),
          ),
          ...trip.reviewList.map(
            (review) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(review.photoUrl),
                    radius: 20,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(review.name, style: const TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          children: List.generate(5, (index) {
                            return Icon(
                              index < review.rating.round() ? Icons.star : Icons.star_border,
                              color: Colors.amber,
                              size: 16,
                            );
                          }),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          review.comment,
                          style: const TextStyle(fontSize: 14, color: Colors.black87),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      formatToRupiah(trip.price),
                      style: boldTextStyle.copyWith(
                        fontSize: 20,
                        color: redColor,
                      ),
                    ),
                    Text(
                      ' / Pax',
                      style: mediumTextStyle.copyWith(),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: trip.isPrivate ? Colors.red[100] : Colors.blue[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    trip.isPrivate ? 'Private Trip' : 'Open Trip',
                    style: mediumTextStyle.copyWith(
                      fontSize: 12,
                      color: trip.isPrivate ? Colors.red[700] : Colors.blue[700],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: mainColor,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Booking feature coming soon!')),
                  );
                },
                child: Text(
                  'Book Now',
                  style: boldTextStyle.copyWith(
                    fontSize: 18,
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
