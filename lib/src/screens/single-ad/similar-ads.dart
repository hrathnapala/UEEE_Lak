import 'package:flutter/material.dart';

class SimilarAds extends StatelessWidget {
  final String _detail;

  static const double _hpad = 20.0;

  SimilarAds(this._detail);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 15, _hpad, 1.0),
            child: Text(_detail,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
        ]);
  }
}
