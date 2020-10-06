import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  final String _title;
  final String _body;
  final String _region;
  static const double _top_hpad = 18.0;
  static const double _hpad = 20.0;

  Section(this._title, this._body, this._region);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Divider(
            height: 3,
            thickness: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_top_hpad, 16.0, _top_hpad, 1.0),
            child: Text(
              _title,
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 1.0),
            child: Text(_body),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 80.0),
            child: Text(
              _region,
              style: TextStyle(fontSize: 20.0),
            ),
          ),
        ]);
  }
}
