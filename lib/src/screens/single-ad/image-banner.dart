import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageBanner extends StatelessWidget {
  final String _assetPath;

  ImageBanner(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        options:
            CarouselOptions(height: MediaQuery.of(context).size.height * 0.26),
        items: [
          "assets/img/vitz1.jpg",
          "assets/img/vitz2.jpg",
          "assets/img/vitz3.jpg",
          "assets/img/vitz4.jpg",
        ].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(
                i,
                width: MediaQuery.of(context).size.width,
              );
            },
          );
        }).toList(),
      ),
      decoration: BoxDecoration(color: Colors.white),
    );
  }
}
