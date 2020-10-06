import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyAdsScreen(),
    );
  }
}

class MyAdsScreen extends StatefulWidget {
  @override
  _MyAdsScreenState createState() => _MyAdsScreenState();
}

class _MyAdsScreenState extends State<MyAdsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My ads'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 160,
          ),
          Icon(
            Icons.card_membership,
            color: Colors.blue[900],
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Text(
              "You haven't posted any ads yet",
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
                "Get started by posting your first ad. It only takes about 1 hour" +
                    " during office hours for us to review your ad and it to be published",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.0,
                    //fontWeight: FontWeight.w600,
                    color: Colors.grey),
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
              ),
            ),
          )
        ],
      ),
    );
  }
}
