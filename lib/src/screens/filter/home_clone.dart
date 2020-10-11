import 'package:flutter/material.dart';
import 'package:lak_app/main.dart';
import 'package:lak_app/src/screens/filter/category_filter.dart';
import 'package:lak_app/src/screens/filter/common_filter.dart';
import 'package:lak_app/src/screens/filter/locationModelClass.dart';
import 'package:lak_app/src/screens/filter/location_filter.dart';
import 'package:lak_app/src/screens/message-page/home_carousel.dart';
import 'package:lak_app/src/screens/single-ad/single-ad.dart';

class HomeClone extends StatefulWidget {
  @override
  _HomeCloneState createState() => _HomeCloneState();
}

class _HomeCloneState extends State<HomeClone> {
  String location = LocationModel.getLocation().isNotEmpty
      ? LocationModel.getLocation()
      : "Sri Lanka";

  String filterPrice = "";

  @override
  void initState() {
    super.initState();
  }

  List<String> Names = [
    'Kelaniya Luxury Apartment for sale',
    'Honda vezel for sale',
    'High Back Chair for sale',
    'Oppo A5 for sale',
    'VR Box for sale',
    'Honda CBR for sale',
    'House for Rent'
  ];
  List<String> Location = [
    'Gampaha,Apartment',
    'Galle,Vehicle',
    'Malabe,Chair',
    'Gampaha,Mobile Phone',
    'Colombo, Mobile Phone Accessoryasaasasa',
    'Kaluthara,Bike',
    'Borella,House'
  ];
  List<String> Photos = [
    'assets/img/image1.jpg',
    'assets/img/image2.jpg',
    'assets/img/image3.jpg',
    'assets/img/image4.jpg',
    'assets/img/image5.jpg',
    'assets/img/image6.jpg',
    'assets/img/image7.jpg'
  ];
  List<String> Prices = [
    'Rs 19,000,000',
    'Rs 6,000,000',
    'Rs 15,000',
    'Rs 55,000',
    'Rs 2500',
    'Rs 600,000',
    'Rs 55,000'
  ];
  List<String> postedTime = [
    '1 minute ago',
    '1 day ago',
    '9 days ago',
    '5 minute ago',
    '7 days ago',
    '8 minute ago',
    '6 days ago'
  ];

  Future<bool> _onBackPressed() {
    return Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MyApp()));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
                "${LocationModel.getLocation1().isNotEmpty ? LocationModel.getLocation1() : "Category"}"),
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
              children: [
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        FlatButton.icon(
                            onPressed: () async {
                              String value = await Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => LocationFilter()));
                              setState(() {
                                location = value;
                              });
                            },
                            icon: Icon(Icons.location_on),
                            label: Text(location)),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        FlatButton.icon(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => CategoryFilter()));
                            },
                            icon: Icon(Icons.category),
                            label: Text(
                                "${LocationModel.getLocation1().isNotEmpty ? LocationModel.getLocation1() : "Category"}")),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 1,
                          width: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        FlatButton.icon(
                            onPressed: () async {
                              String response = await Navigator.of(context)
                                  .push(MaterialPageRoute(
                                      builder: (context) => CommonFilter()));
                              setState(() {
                                filterPrice = response;
                              });
                            },
                            icon: Icon(Icons.equalizer),
                            label: Text("")),
                      ]),
                ),
                SizedBox(
                  height: 5,
                ),
                HomeCarousel(),
                Text(
                  "$filterPrice",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueGrey),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  // primary: false,
                  shrinkWrap: true,
                  itemBuilder: (_, int index) => EachList(
                      this.Names[index],
                      this.Location[index],
                      this.Prices[index],
                      this.Photos[index],
                      this.postedTime[index]),

                  itemCount: this.Names.length,
                ),
              ],
            ),
          )),
    );
  }
}

class EachList extends StatelessWidget {
  final String name;
  final String location;
  final String price;
  final String photo;
  final String postedTime;

  EachList(this.name, this.location, this.price, this.photo, this.postedTime);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
          height: 170.0,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SingleAd()),
              );
            },
            child: Padding(
              padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        width: 210.0,
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    location,
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    price,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 100.0),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: 110.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).accentColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        alignment: Alignment.center,
                        child: Text(postedTime),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 20.0,
          top: 15.0,
          bottom: 15.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              width: 110.0,
              image: AssetImage(
                photo,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
