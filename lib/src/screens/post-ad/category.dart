import 'package:flutter/material.dart';
import 'item_details_form.dart';

class Category extends StatefulWidget {
  @override
  CategoryState createState() => CategoryState();
}

class CategoryState extends State<Category> {
  final _category = <String>[
    'Electronics',
    'Vehicles',
    'Property',
    'Home & Garden',
    'Fashion',
    'Sports',
    'Pets',
    'Services',
    'Jobs',
    'Food',
    'Education'
  ];
  //Location List
  Widget _buildList() {
    final Iterable<ListTile> tiles = _category.map((String pair) {
      return ListTile(
          title: Text(
            pair,
            style: TextStyle(fontSize: 16.0),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ItemDetails()),
            );
          });
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
        title: Text('Post your Ad'),
        backgroundColor: Colors.blue[900],
      ),
      body: _buildList(),
    );
  }
}
