import 'package:besttrips/models/trip_model.dart';
import 'package:besttrips/utils/function.dart';
import 'package:besttrips/utils/theme.dart';
import 'package:flutter/material.dart';

class TripCard extends StatelessWidget {
  final Trip trip;

  const TripCard({super.key, required this.trip});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, "/details", arguments: trip),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                trip.photoUrls.first,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trip.title,
                    style: boldTextStyle.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 6),
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
                  SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatToRupiah(trip.price),
                        style: semiboldTextStyle.copyWith(
                          fontSize: 16,
                          color: redColor,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.orange, size: 18),
                          SizedBox(width: 4),
                          Text(
                            '${trip.rating} (${trip.reviews})',
                            style: regularTextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
