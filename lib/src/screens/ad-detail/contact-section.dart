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
            padding: const EdgeInsets.fromLTRB(_hpad, 8, _hpad, 15.0),
            child: RaisedButton(
              color: Colors.blue,
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 10.0),
                child: Text("Call - 077 32 65 977",
                    style: TextStyle(fontSize: 18.0)),
              ),
              onPressed: () {},
            ),
          ),
        ]);
  }
}
