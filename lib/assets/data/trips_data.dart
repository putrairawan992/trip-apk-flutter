import 'package:besttrips/models/trip_model.dart';

List<Trip> allTrips = [
  Trip(
    title: 'Bali Adventure Trip',
    photoUrls: [
      'https://images.unsplash.com/photo-1518548419970-58e3b4079ab2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8YmFsaXxlbnwwfHwwfHx8MA%3D%3D',
      'https://plus.unsplash.com/premium_photo-1668883189152-d771c402c385?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFsaXxlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1577717903315-1691ae25ab3f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8YmFsaXxlbnwwfHwwfHx8MA%3D%3D',
    ],
    price: 15000000,
    rating: 4.8,
    reviews: 120,
    isPrivate: false,
  ),
  Trip(
    title: 'Komodo Private Sailing',
    photoUrls: [
      'https://plus.unsplash.com/premium_photo-1661913064849-ece1ab4ddbe7?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8a29tb2RvJTIwaXNsYW5kfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1607427225127-a4ae1d4b050c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8a29tb2RvJTIwaXNsYW5kfGVufDB8fDB8fHww',
      'https://plus.unsplash.com/premium_photo-1661876927993-bedb3ab87208?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8a29tb2RvJTIwaXNsYW5kfGVufDB8fDB8fHww',
    ],
    price: 7000000,
    rating: 5.0,
    reviews: 45,
    isPrivate: true,
  ),
  Trip(
    title: 'Lombok Beach Escape',
    photoUrls: [
      'https://images.unsplash.com/photo-1605752660759-2db7b7de8fa9?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bG9tYm9rfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1594235206666-19245d362ffa?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bG9tYm9rfGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1583022846753-83a4eba54ac1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8bG9tYm9rfGVufDB8fDB8fHww',
    ],
    price: 3000000,
    rating: 4.5,
    reviews: 80,
    isPrivate: false,
  ),
  Trip(
    title: 'Raja Ampat Luxury Cruise',
    photoUrls: [
      'https://images.unsplash.com/photo-1516690561799-46d8f74f9abf?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFqYSUyMGFtcGF0fGVufDB8fDB8fHww',
      'http://images.unsplash.com/photo-1570789210967-2cac24afeb00?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFqYSUyMGFtcGF0fGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1637060548964-f064b88cd344?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cmFqYSUyMGFtcGF0fGVufDB8fDB8fHww',
    ],
    price: 20000000,
    rating: 4.9,
    reviews: 60,
    isPrivate: true,
  ),
  Trip(
    title: 'Yogyakarta Cultural Trip',
    photoUrls: [
      'https://plus.unsplash.com/premium_photo-1700954824012-08ce5362e6c6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8eW9neWFrYXJ0YXxlbnwwfHwwfHx8MA%3D%3D',
      'https://images.unsplash.com/photo-1624936436147-88492b507bc3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHlvZ3lha2FydGF8ZW58MHx8MHx8fDA%3D',
      'https://images.unsplash.com/photo-1552035191-f10bd9fbf35e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8eW9neWFrYXJ0YXxlbnwwfHwwfHx8MA%3D%3D',
    ],
    price: 2500000,
    rating: 4.6,
    reviews: 95,
    isPrivate: false,
  ),
];
