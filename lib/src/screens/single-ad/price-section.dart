import 'package:flutter/material.dart';

class PriceSection extends StatelessWidget {
  final String _price;
  final String _owner;

  static const double _top_hpad = 18.0;
  static const double _hpad = 20.0;

  PriceSection(this._price, this._owner);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_top_hpad, 4.0, _top_hpad, 1.0),
            child: Text(
              _price,
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 10.0),
            child: Text(_owner, style: TextStyle(fontSize: 18.0)),
          ),
          Divider(
            height: 1.0,
            thickness: 2,
          ),
        ]);
  }
}
