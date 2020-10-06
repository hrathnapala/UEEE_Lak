import 'package:flutter/material.dart';
import 'item_details_form.dart';

class Category extends StatefulWidget {
  @override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<Category> {
  final _category = <String>[
    "Essentials",
    "Electronics",
    "Vehicles",
    "Property",
    "Jobs in Sri Lanka",
    "Work Overseas",
    "Home & Garden",
    "Fashion & Beauty",
    "Hobby, Sport & Kids",
    "Business & Industry",
    "Services",
    "Education",
    "Animals",
    "Agriculture",
    "Other",
  ];
  List<IconData> images = [
    Icons.local_grocery_store,
    Icons.phone_android,
    Icons.local_taxi,
    Icons.home,
    Icons.work,
    Icons.offline_bolt,
    Icons.location_city,
    Icons.watch,
    Icons.play_arrow,
    Icons.build,
    Icons.room_service,
    Icons.book,
    Icons.pets,
    Icons.spa,
    Icons.devices_other,
  ];
  //Location List
  int counter = 0;
  Widget _buildList() {
    final Iterable<ListTile> tiles = _category.map((String pair) {
      var list = ListTile(
          title: Row(children: [
            Icon(
              images[counter],
              color: Colors.blueAccent,
            ),
            Text(
              '   ' + _category[counter],
              style: TextStyle(fontSize: 16.0),
            )
          ]),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemDetails()),
            );
          });

      if (counter >= _category.length) {
        counter = 0;
      }
      counter = counter + 1;
      return list;
    });

    final List<Widget> divided =
        ListTile.divideTiles(context: context, tiles: tiles).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Category'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: divided,
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lak.lk'),
        backgroundColor: Colors.blue[900],
      ),
      body: _buildList(),
    );
  }
}
