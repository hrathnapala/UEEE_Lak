import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  final String _tp1;
  final String _tp2;

  static const double _hpad = 20.0;

  ContactSection(this._tp1, this._tp2);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 15, _hpad, 5.0),
            child: Text(_tp1,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 0, _hpad, 15.0),
            child: Text(_tp2,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
        ]);
  }
}
