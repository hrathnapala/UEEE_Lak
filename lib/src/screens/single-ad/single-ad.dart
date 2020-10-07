import 'package:flutter/material.dart';
import 'section.dart';
import 'price-section.dart';
import 'detail-section.dart';
import 'image-banner.dart';
import '../home.dart';
import '../ad-share/ad-share.dart';

class SingleAd extends StatelessWidget {
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
          title: Text('Details'),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdShare()),
                    );
                  },
                  child: Icon(
                    Icons.share,
                    size: 26.0,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ImageBanner("assets/img/vitz.jpg"),
              Section(
                  "Toyota Vitz", "Posted on 6 Aug 2020", "Kaduwela, Colombo"),
              PriceSection("Rs 5, 000, 000", "Sale by Amith Weerasena"),
              DetailSection("Category       Cars", "Brand             Toyota",
                  "Model             Vitz", "Condition       Brand-new"),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // primary: false,
                shrinkWrap: true,
                itemBuilder: (_, int index) => EachList(
                    this.Names[index],
                    this.Location[index],
                    this.Prices[index],
                    this.Photos[index]),
                itemCount: this.Names.length,
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
              Navigator.push(
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
                        child: Text(
                          'a moment ago',
                        ),
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
