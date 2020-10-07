import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyPersonalProfileScreen extends StatefulWidget {
  @override
  _MyPersonalProfileScreenState createState() =>
      _MyPersonalProfileScreenState();
}

class _MyPersonalProfileScreenState extends State<MyPersonalProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('My profile'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Center(
                  child: Text(
                    "Welcome",
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
          Container(
            width: 100,
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            //child: Center(
            child: Text(
              "Create a free profile on Lak.lk to showcase your skills and get your" +
                  " dream job. Make sure to complete your Profile in order to stand " +
                  "out from the crowd; employers like to see details! " +
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
            height: 45,
          ),
          //ListTile(
          Row(
            children: <Widget>[
              SizedBox(
                width: 16.0,
              ),
              Center(
                child: Text(
                  "Personal Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18.0, color: Colors.black),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 24.0,
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/81.jpg"),
            ),
            title: Row(
              children: <Widget>[
                Text("Thanuja Chamika"),
                SizedBox(
                  width: 16.0,
                ),
              ],
            ),
            subtitle: Column(
              children: <Widget>[
                SizedBox(
                  height: 6.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      "thanujachamikatc@gmail.com",
                      style: TextStyle(
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 6.0,
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
                    "Create Profile",
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
