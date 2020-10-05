import 'package:flutter/material.dart';
import 'package:lak_app/src/screens/single-ad/single-ad.dart';
import 'price-section.dart';
import 'contact-section.dart';

class DetailSection extends StatelessWidget {
  final String _detail1,
      _detail2,
      _detail3,
      _detail4,
      _detail5,
      _detail6,
      _detail7,
      _detail8,
      _detail9,
      _detail10;

  static const double _hpad = 20.0;

  DetailSection(
      this._detail1,
      this._detail2,
      this._detail3,
      this._detail4,
      this._detail5,
      this._detail6,
      this._detail7,
      this._detail8,
      this._detail9,
      this._detail10);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 30, _hpad, 1.0),
            child: Text(_detail1,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_detail2,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_detail3,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_detail4,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_detail5,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_detail6,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_detail7,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 3.0),
            child: Text(_detail8,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 3.0),
            child: Text(_detail9,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 15, _hpad, 15.0),
            child: Text(_detail10,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          PriceSection("Rs 5, 000, 000", "Sale by Amith Weerasena"),
          ContactSection("Mobile - 077 32 65 977", "Mobile -  071 32 65 977"),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 10.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SingleAd()),
                  );
                },
                child: Text("Show Less...",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
        ]);
  }
}
