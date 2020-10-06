import 'package:flutter/material.dart';
import 'package:share/share.dart';

class ShareButtons extends StatelessWidget {
  static const double _hpad = 20.0;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 50, _hpad, 0),
            child: RaisedButton(
              color: Colors.blue[900],
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15.0),
                child: Text("facebook",
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              onPressed: () {
                Share.share("Facebook Share");
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 14, _hpad, 0),
            child: RaisedButton(
              color: Colors.red[900],
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15.0),
                child: Text("Google +",
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              onPressed: () {
                Share.share("Google Share");
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(_hpad, 14, _hpad, 0),
            child: RaisedButton(
              color: Colors.green[800],
              child: Container(
                padding: const EdgeInsets.fromLTRB(30, 15, 30, 15.0),
                child: Text("Whatsapp",
                    style: TextStyle(
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              onPressed: () {
                Share.share("WhatsApp Share");
              },
            ),
          ),
        ]);
  }
}
