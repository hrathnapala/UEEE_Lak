import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    // Dashboard(),
    // Chat(),
    // Profile(),
    // Settings(),
  ];
  // List<String> Names = [
  //   'Kelaniya Luxury Apartment for sale',
  //   'Honda vezel for sale',
  //   'High Back Chair for sale',
  //   'Oppo A5 for sale',
  //   'VR Box for sale',
  //   'Honda CBR for sale',
  //   'House for Rent'
  // ];
  // List<String> Location = [
  //   'Gampaha,Apartment',
  //   'Galle,Vehicle',
  //   'Malabe,Chair',
  //   'Gampaha,Mobile Phone',
  //   'Colombo, Mobile Phone Accessoryasaasasa',
  //   'Kaluthara,Bike',
  //   'Borella,House'
  // ];
  // List<String> Photos = [
  //   'assets/img/image1.jpg',
  //   'assets/img/image2.jpg',
  //   'assets/img/image3.jpg',
  //   'assets/img/image4.jpg',
  //   'assets/img/image5.jpg',
  //   'assets/img/image6.jpg',
  //   'assets/img/image7.jpg'
  // ];
  // List<String> Prices = [
  //   'Rs 19,000,000',
  //   'Rs 6,000,000',
  //   'Rs 15,000',
  //   'Rs 55,000',
  //   'Rs 2500',
  //   'Rs 600,000',
  //   'Rs 55,000'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Column(
          children: [
            Text(
              "LAK.lk",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              "22656 results",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       color: Colors.white,
      //       height: MediaQuery.of(context).size.height * 0.08,
      //       width: MediaQuery.of(context).size.width,
      //       child: Row(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.spaceAround,
      //           children: [
      //             FlatButton.icon(
      //                 onPressed: () {},
      //                 icon: Icon(Icons.location_on),
      //                 label: Text("Sri Lanka")),
      //             VerticalDivider(
      //               color: Colors.black,
      //               thickness: 1,
      //               width: 1,
      //               indent: 20,
      //               endIndent: 20,
      //             ),
      //             FlatButton.icon(
      //                 onPressed: () {},
      //                 icon: Icon(Icons.category),
      //                 label: Text("Category")),
      //             VerticalDivider(
      //               color: Colors.black,
      //               thickness: 1,
      //               width: 1,
      //               indent: 20,
      //               endIndent: 20,
      //             ),
      //             FlatButton.icon(
      //                 onPressed: () {},
      //                 icon: Icon(Icons.equalizer),
      //                 label: Text("")),
      //           ]),
      //     ),
      //     SizedBox(
      //       height: 5,
      //     ),
      //     ClipRRect(
      //       borderRadius: BorderRadius.circular(30),
      //       child: CarouselSlider(
      //         options: CarouselOptions(
      //             height: MediaQuery.of(context).size.height * 0.25),
      //         items: [
      //           "assets/img/img1.jpg",
      //           "assets/img/img2.jpg",
      //           "assets/img/img3.jpg",
      //           "assets/img/img4.jpg",
      //           "assets/img/img5.jpg"
      //         ].map((i) {
      //           return Builder(
      //             builder: (BuildContext context) {
      //               return Image.asset(
      //                 i,
      //                 height: MediaQuery.of(context).size.height * 0.25,
      //                 width: MediaQuery.of(context).size.width,
      //               );
      //             },
      //           );
      //         }).toList(),
      //       ),
      //     ),
      //     SizedBox(
      //       height: 10,
      //     ),
      //     SingleChildScrollView(
      //       child: Container(
      //         decoration: new BoxDecoration(
      //           borderRadius: new BorderRadius.only(
      //               topLeft: const Radius.circular(30.0),
      //               topRight: const Radius.circular(30.0)),
      //           color: Colors.white,
      //         ),
      //         height: MediaQuery.of(context).size.height * 0.443,
      //         width: MediaQuery.of(context).size.width,
      //         child: Padding(
      //           padding: const EdgeInsets.all(12.0),
      //           child: new ListView.builder(
      //             reverse: false,
      //             itemBuilder: (_, int index) => EachList(
      //                 this.Names[index],
      //                 this.Location[index],
      //                 this.Prices[index],
      //                 this.Photos[index]),
      //             itemCount: this.Names.length,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
                          // currentScreen =
                          //     Dashboard(); // if user taps on this dashboard tab will be active
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
                          // currentScreen =
                          //     Chat(); // if user taps on this dashboard tab will be active
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
                          // currentScreen =
                          //     Profile(); // if user taps on this dashboard tab will be active
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
                          // currentScreen =
                          //     Settings(); // if user taps on this dashboard tab will be active
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
// Widget currentScreen = Dashboard();

// class EachList extends StatelessWidget {
//   final String name;
//   final String location;
//   final String price;
//   final String photo;
//   EachList(this.name, this.location, this.price, this.photo);
//   @override
//   Widget build(BuildContext context) {
//     return new Card(
//       child: new Container(
//         decoration: BoxDecoration(
//           borderRadius: new BorderRadius.only(
//               topLeft: const Radius.circular(30.0),
//               topRight: const Radius.circular(30.0),bottomLeft: const Radius.circular(30.0),
//               bottomRight: const Radius.circular(30.0)),
//           gradient: new LinearGradient(
//               colors: [Colors.grey, Colors.blueAccent],
//               begin: Alignment.centerRight,
//               end: Alignment.centerLeft),
//         ),
//         height: MediaQuery.of(context).size.height * 0.15,
//         width: MediaQuery.of(context).size.width,
//         padding: EdgeInsets.all(8.0),
//         child: new Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Image.asset(
//               photo,
//               height: 100,
//               width: 100,
//             ),
//             new Padding(padding: EdgeInsets.only(right: 20.0)),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 12.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.6,
//                     child: new Text(
//                       name,
//                       style: TextStyle(
//                           fontSize: 18.0, fontWeight: FontWeight.bold),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.6,
//                     child: new Text(
//                       location,
//                       style: TextStyle(
//                           fontSize: 18.0, fontWeight: FontWeight.w500),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   Container(
//                     width: MediaQuery.of(context).size.width * 0.6,
//                     child: new Text(
//                       price,
//                       style: TextStyle(fontSize: 18.0),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
