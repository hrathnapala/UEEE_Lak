import 'package:flutter/material.dart';
import 'package:lak_app/src/screens/home.dart';
import 'package:lak_app/src/screens/profile-page/main-profile-page.dart';
import 'package:lak_app/src/screens/search.dart';
import 'message-page/main-message-page.dart';
import './post-ad/locations.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  int currentTab = 0; // to keep track of active tab index
  // final List<Widget> screens = [
  //   // Dashboard(),
  //   // Chat(),
  //   // Profile(),
  //   // Settings(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: currentScreen,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Location()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      //this line is added to avoid moving floating action button
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff75A6D5),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.08,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              Home(); // if user taps on this dashboard tab will be active
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.home,
                              color: currentTab == 0
                                  ? Colors.black87
                                  : Colors.white70),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.black87
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              Search(); // if user taps on this dashboard tab will be active
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: currentTab == 1
                                ? Colors.black87
                                : Colors.white70,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: currentTab == 1
                                  ? Colors.black87
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // Right Tab bar icons

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              MainMessagePage(); // if user taps on this dashboard tab will be active
                          currentTab = 2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.chat,
                            color: currentTab == 2
                                ? Colors.black87
                                : Colors.white70,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.black87
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen =
                              MainProfilePage(); // if user taps on this dashboard tab will be active
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.person,
                            color: currentTab == 3
                                ? Colors.black87
                                : Colors.white70,
                          ),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.black87
                                  : Colors.white70,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget currentScreen = Home();
