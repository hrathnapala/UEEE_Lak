import 'package:flutter/material.dart';
import 'category.dart';

class Location extends StatefulWidget {
  @override
  LocationsState createState() => LocationsState();
}

class LocationsState extends State<Location> {
  final _locations = <String>[
    'Colombo',
    'Kandy',
    'Galle',
    'Kurunegala',
    'Ampara',
    'Anuradhapura',
    'Badulla',
    'Batticaloa',
    'Gampaha',
    'Hambanthota',
    'Jaffna'
  ];
//Location List
  Widget _buildList() {
    final Iterable<ListTile> tiles = _locations.map((String pair) {
      return ListTile(
        title: Text(
          pair,
          style: TextStyle(fontSize: 16.0),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Category()),
          );
        },
      );
    });

    final List<Widget> divided =
        ListTile.divideTiles(context: context, tiles: tiles).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text('Select Location'),
          backgroundColor: Colors.blue,
        ),
        body: ListView(
          children: divided,
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post your Ad'),
        backgroundColor: Colors.blue[900],
      ),
      body: _buildList(),
    );
  }
}
