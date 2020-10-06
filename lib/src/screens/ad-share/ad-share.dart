import 'package:flutter/material.dart';
import 'share-buttons.dart';
import 'section.dart';

class AdShare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Toyota Vitz'),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Section(
                  "Toyota Vitz", "Posted on 6 Aug 2020", "Kaduwela, Colombo"),
              ShareButtons(),
            ],
          ),
        ));
  }
}
