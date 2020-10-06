import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Favorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FavoritesScreen(),
    );
  }
}

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Favorites'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Icon(
            Icons.star,
            color: Colors.yellow[700],
            size: 100.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "You don't have any ads in your favorites yet!",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 325,
            child: Center(
              child: Text(
                "Get started by tapping the 'add to favorites' - icon on items that " +
                    "you find interesting and might be interested in finding later.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.0,
                    //fontWeight: FontWeight.w600,
                    color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "Explore Ads >",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.blue[400]),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ],
      ),
    );
  }
}
