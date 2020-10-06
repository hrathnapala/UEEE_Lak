import 'package:flutter/material.dart';
import 'section.dart';
import 'price-section.dart';
import 'detail-section.dart';
import 'image-banner.dart';
import '../home.dart';
import '../ad-share/ad-share.dart';

class SingleAd extends StatelessWidget {
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
            ],
          ),
        ));
  }
}
