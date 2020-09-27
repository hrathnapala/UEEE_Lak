import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:lak_app/src/screens/filter/location_filter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String location = "Location";
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
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
                            var result = await Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => LocationFilter()));
                            setState(() {
                              if (result != null) {
                                location = result;
                              }
                            });
                          },
                          icon: Icon(Icons.location_on),
                          label: Text("$location")),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.category),
                          label: Text("Category")),
                      VerticalDivider(
                        color: Colors.black,
                        thickness: 1,
                        width: 1,
                        indent: 20,
                        endIndent: 20,
                      ),
                      FlatButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.equalizer),
                          label: Text("")),
                    ]),
              ),
              SizedBox(
                height: 5,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CarouselSlider(
                  options: CarouselOptions(
                      height: MediaQuery.of(context).size.height * 0.25),
                  items: [
                    "assets/img/img1.jpg",
                    "assets/img/img2.jpg",
                    "assets/img/img3.jpg",
                    "assets/img/img4.jpg",
                    "assets/img/img5.jpg"
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.asset(
                          i,
                          height: MediaQuery.of(context).size.height * 0.35,
                          width: MediaQuery.of(context).size.width,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(30.0),
                      topRight: const Radius.circular(30.0)),
                  color: Colors.white,
                ),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: new ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    primary: false,
                    itemBuilder: (_, int index) => EachList(
                        this.Names[index],
                        this.Location[index],
                        this.Prices[index],
                        this.Photos[index]),
                    itemCount: this.Names.length,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class EachList extends StatelessWidget {
  final String name;
  final String location;
  final String price;
  final String photo;
  EachList(this.name, this.location, this.price, this.photo);
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.only(
              topLeft: const Radius.circular(30.0),
              topRight: const Radius.circular(30.0),
              bottomLeft: const Radius.circular(30.0),
              bottomRight: const Radius.circular(30.0)),
          gradient: new LinearGradient(
              colors: [Colors.grey, Colors.blueAccent],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft),
        ),
        height: MediaQuery.of(context).size.height * 0.18,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(8.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Image.asset(
                photo,
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
            new Padding(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.width * 0.04)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    new Text(
                      name,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                    ),
                    new Text(
                      location,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      overflow: TextOverflow.ellipsis,
                    ),
                    new Text(
                      price,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.w900),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
