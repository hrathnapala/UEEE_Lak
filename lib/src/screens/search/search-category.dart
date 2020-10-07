import 'package:flutter/material.dart';
import '../home.dart';

class SearchCategory extends StatelessWidget {
  var category = [
    "Essentials",
    "Electronics",
    "Vehicles",
    "Property",
    "Jobs",
    "Others"
  ];
  var images = [
    "assets/img/essentials.jpg",
    "assets/img/electronics.JPG",
    "assets/img/vehicles.JPG",
    "assets/img/houses.JPG",
    "assets/img/jobs.JPG",
    "assets/img/others.JPG"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap:true,
      physics: NeverScrollableScrollPhysics(),
        itemCount: category.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Column(children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      images[index],
                      height: 85,
                      width: 85,
                    ),
                    Padding(
                      padding: EdgeInsets.all(25),
                      child: Text(category[index],
                          style: TextStyle(
                              fontSize: 16,
                              height: 1.2,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    ),
                  ])));
        });
  }
}
