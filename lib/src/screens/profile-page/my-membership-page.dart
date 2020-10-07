import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyMembershipScreen extends StatefulWidget {
  @override
  _MyMembershipScreenState createState() => _MyMembershipScreenState();
}

class _MyMembershipScreenState extends State<MyMembershipScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My membership'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.store_mall_directory,
              color: Colors.blue[900],
              size: 50.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            title: Row(
              children: <Widget>[
                SizedBox(
                  width: 15,
                ),
                Center(
                  child: Text(
                    "Become a Lak.lk member",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18.0,
                        //fontWeight: FontWeight.w600,
                        color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 100,
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            //child: Center(
            child: Text(
              "Memberships give your business a voice and presense on Lak.lk, to reach" +
                  " more customers, increase your sales and expand your business! " +
                  "Memberships unlock powerful tools like sales analytics, a dedicated " +
                  "business page and discounted ad promotions.",
              //textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15.0,
                  //fontWeight: FontWeight.w600,
                  color: Colors.grey),
              overflow: TextOverflow.ellipsis,
              maxLines: 10,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 100,
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(10.0),
              color: Colors.blue[600],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // Replace with a Row for horizontal icon + text
                children: <Widget>[
                  Text(
                    "Learn more",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
