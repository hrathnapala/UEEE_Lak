import 'package:flutter/material.dart';
import 'package:lak_app/src/screens/ad-detail/ad-detail.dart';

class DetailSection extends StatelessWidget {
  final String _detail1, _detail2, _detail3, _detail4;

  static const double _hpad = 20.0;

  DetailSection(this._detail1, this._detail2, this._detail3, this._detail4);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 6, _hpad, 1.0),
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
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 5.0),
            child: Text(_detail4,
                style: TextStyle(fontSize: 17.0, color: Colors.grey[700])),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 5, _hpad, 10.0),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdDetail()),
                  );
                },
                child: Text("Show More...",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
          Divider(
            height: 1.0,
            thickness: 2,
          ),
        ]);
  }
}
