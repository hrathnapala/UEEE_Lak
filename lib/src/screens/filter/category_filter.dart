import 'package:flutter/material.dart';
import 'package:lak_app/main.dart';
import 'package:lak_app/src/screens/filter/category_model.dart';
import 'package:lak_app/src/screens/filter/home_clone.dart';
import 'package:lak_app/src/screens/filter/locationModelClass.dart';
import 'package:lak_app/src/screens/home.dart';
import 'package:lak_app/src/screens/homepage.dart';
import 'package:lak_app/src/screens/message-page/main-message-page.dart';

class CategoryFilter extends StatefulWidget {
  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {

  List<CategoryModel> cat = [
    CategoryModel(category:"Essentials",icondata:Icons.local_grocery_store ),
    CategoryModel(category:"Electronics",icondata:Icons.phone_android ),
    CategoryModel(category:"Vehicles",icondata:Icons.local_taxi ),
    CategoryModel(category:"Property",icondata:Icons.home ),
    CategoryModel(category:"Jobs in Sri Lanka",icondata:Icons.work ),
    CategoryModel(category:"Work Overseas",icondata:Icons.offline_bolt ),
    CategoryModel(category:"Home & Garden",icondata:Icons.location_city ),
    CategoryModel(category:"Fashion & Beauty",icondata:Icons.watch ),
    CategoryModel(category:"Hobby, Sport & Kids",icondata:Icons.play_arrow ),
    CategoryModel(category:"Business & Industry",icondata:Icons.build ),
    CategoryModel(category:"Services",icondata:Icons.room_service ),
    CategoryModel(category:"Education",icondata:Icons.book ),
    CategoryModel(category:"Animals",icondata:Icons.pets ),
    CategoryModel(category:"Agriculture",icondata:Icons.spa ),
    CategoryModel(category:"Other",icondata:Icons.devices_other )
  ];
    List<CategoryModel> catFilter = [
    CategoryModel(category:"Essentials",icondata:Icons.local_grocery_store ),
    CategoryModel(category:"Electronics",icondata:Icons.phone_android ),
    CategoryModel(category:"Vehicles",icondata:Icons.local_taxi ),
    CategoryModel(category:"Property",icondata:Icons.home ),
    CategoryModel(category:"Jobs in Sri Lanka",icondata:Icons.work ),
    CategoryModel(category:"Work Overseas",icondata:Icons.offline_bolt ),
    CategoryModel(category:"Home & Garden",icondata:Icons.location_city ),
    CategoryModel(category:"Fashion & Beauty",icondata:Icons.watch ),
    CategoryModel(category:"Hobby, Sport & Kids",icondata:Icons.play_arrow ),
    CategoryModel(category:"Business & Industry",icondata:Icons.build ),
    CategoryModel(category:"Services",icondata:Icons.room_service ),
    CategoryModel(category:"Education",icondata:Icons.book ),
    CategoryModel(category:"Animals",icondata:Icons.pets ),
    CategoryModel(category:"Agriculture",icondata:Icons.spa ),
    CategoryModel(category:"Other",icondata:Icons.devices_other )
  ];

  // List<String> categories = [
  //   "Essentials",
  //   "Electronics",
  //   "Vehicles",
  //   "Property",
  //   "Jobs in Sri Lanka",
  //   "Work Overseas",
  //   "Home & Garden",
  //   "Fashion & Beauty",
  //   "Hobby, Sport & Kids",
  //   "Business & Industry",
  //   "Services",
  //   "Education",
  //   "Animals",
  //   "Agriculture",
  //   "Other",
  // ];
  // List<IconData> images = [
  //   Icons.local_grocery_store,
  //   Icons.phone_android,
  //   Icons.local_taxi,
  //   Icons.home,
  //   Icons.work,
  //   Icons.offline_bolt,
  //   Icons.location_city,
  //   Icons.watch,
  //   Icons.play_arrow,
  //   Icons.build,
  //   Icons.room_service,
  //   Icons.book,
  //   Icons.pets,
  //   Icons.spa,
  //   Icons.devices_other,
  // ];
  // List<String> filteredcategory = [
  //   "Essentials",
  //   "Electronics",
  //   "Vehicles",
  //   "Property",
  //   "Jobs in Sri Lanka",
  //   "Work Overseas",
  //   "Home & Garden",
  //   "Fashion & Beauty",
  //   "Hobby, Sport & Kids",
  //   "Business & Industry",
  //   "Services",
  //   "Education",
  //   "Animals",
  //   "Agriculture",
  //   "Other",
  // ];

  Future<bool> _onBackPressed() {
    return Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pick a Category"),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyApp()));
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
                      catFilter = cat.where((location) {
                        var locationTitle = location.category.toLowerCase();
                        return locationTitle.contains(text);
                      }).toList();
                    });
                  },
                  autofocus: false,
                  decoration: InputDecoration(
                      hintText: "Search for a Category",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
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
                itemCount: catFilter.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Row(
                            children: [
                              Icon(
                                catFilter[index].icondata,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              Text(
                                '${catFilter[index].category}',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                          onTap: () {
                            LocationModel.setLocation1(catFilter[index].category);
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => HomeClone()));
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
      ),
    );
  }
}
