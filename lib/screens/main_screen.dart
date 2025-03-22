import 'package:besttrips/assets/data/trips_data.dart';
import 'package:besttrips/models/trip_model.dart';
import 'package:besttrips/utils/theme.dart';
import 'package:besttrips/widgets/trip_card_widget.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Trip> filteredTrips = [];
  String selectedFilter = 'None';
  String tripTypeFilter = 'All';

  @override
  void initState() {
    super.initState();
    filteredTrips = List.from(allTrips);
  }

  void _showFilterOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ListView(
          children: [
            ListTile(
              leading: Icon(Icons.money),
              title: Text('Harga Termurah'),
              onTap: () {
                _applyFilter('Harga Termurah');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.money_off),
              title: Text('Harga Termahal'),
              onTap: () {
                _applyFilter('Harga Termahal');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Rating Tertinggi'),
              onTap: () {
                _applyFilter('Rating Tertinggi');
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.public),
              title: Text('Hanya Open Trip'),
              onTap: () {
                _applyTripTypeFilter('Open Trip');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Hanya Private Trip'),
              onTap: () {
                _applyTripTypeFilter('Private Trip');
                Navigator.pop(context);
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.clear),
              title: Text('Reset Semua Filter'),
              onTap: () {
                _resetFilters();
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  void _applyFilter(String filter) {
    setState(() {
      selectedFilter = filter;

      if (filter == 'Harga Termurah') {
        filteredTrips.sort((a, b) => a.price.compareTo(b.price));
      } else if (filter == 'Harga Termahal') {
        filteredTrips.sort((a, b) => b.price.compareTo(a.price));
      } else if (filter == 'Rating Tertinggi') {
        filteredTrips.sort((a, b) => b.rating.compareTo(a.rating));
      }
    });
  }

  void _applyTripTypeFilter(String type) {
    setState(() {
      tripTypeFilter = type;
      _filterByType();
    });
  }

  void _filterByType() {
    filteredTrips = allTrips.where((trip) {
      if (tripTypeFilter == 'Open Trip') return !trip.isPrivate;
      if (tripTypeFilter == 'Private Trip') return trip.isPrivate;
      return true;
    }).toList();

    if (selectedFilter != 'None') {
      _applyFilter(selectedFilter);
    }
  }

  void _resetFilters() {
    setState(() {
      selectedFilter = 'None';
      tripTypeFilter = 'All';
      filteredTrips = List.from(allTrips);
    });
  }

  @override
  Widget build(BuildContext context) {
    String activeFilterText = '';
    if (tripTypeFilter != 'All') activeFilterText += tripTypeFilter;
    if (selectedFilter != 'None') {
      activeFilterText += activeFilterText.isNotEmpty ? ' + ' : '';
      activeFilterText += selectedFilter;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          'Explore Trips',
          style: boldTextStyle.copyWith(
            color: whiteColor,
            fontSize: 18,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_alt),
            onPressed: _showFilterOptions,
          ),
        ],
        bottom: activeFilterText.isNotEmpty
            ? PreferredSize(
                preferredSize: Size.fromHeight(30),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    'Filter: $activeFilterText',
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ),
              )
            : null,
      ),
      body: ListView.builder(
        itemCount: filteredTrips.length,
        itemBuilder: (context, index) {
          final trip = filteredTrips[index];
          return TripCard(trip: trip);
        },
      ),
    );
  }
}
