import 'package:flutter/material.dart';
import 'package:lak_app/src/screens/filter/home_clone.dart';
import 'package:lak_app/src/screens/home.dart';
import 'package:lak_app/src/screens/homepage.dart';
import 'package:lak_app/src/screens/message-page/main-message-page.dart';

class CategoryFilter extends StatefulWidget {
  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  List<String> categories = [
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
  List<String> filteredcategory = [
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

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Pick a Category"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop(null);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    filteredcategory = categories.where((location) {
                      var locationTitle = location.toLowerCase();
                      return locationTitle.contains(text);
                    }).toList();
                  });
                },
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Color(0xffd9d9d9),
                    filled: true,
                    hintText: "Search for a Category",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop("Location");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 10.0),
                    child: Text(
                      "Go to All ads",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: filteredcategory.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              images[index],
                              color: Colors.blueAccent,
                            ),
                            SizedBox(
                              width: size.width * 0.05,
                            ),
                            Text(
                              '${filteredcategory[index]}',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        onTap: () {
                          // Navigator.of(context)
                          //     .pop("${filteredcategory[index]}");
                          Navigator.of(context).pushReplacement(MaterialPageRoute(
                                builder: (context) => HomeClone(location:filteredcategory[index])));
                        },
                      ),
                      Divider()
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
