import 'package:flutter/material.dart';
import 'detail-section.dart';

class AdDetail extends StatelessWidget {
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
              DetailSection(
                  "Category                Cars",
                  "Brand                      Toyota",
                  "Model                      Vitz",
                  "Condition                Brand-new",
                  "Model Year             2018",
                  "Transmission         Automatic",
                  "Fuel Type                Petrol",
                  "Engine Capacity    1000 CC",
                  "Mileage                   5, 000 km",
                  "Push start, Multi-function Steering, Lane Depature Assist, Saftey Package, Speakers, Fog Lamp, Winker Mirrors, Rear Wipers, Spare Wheel, Power Shutters, Rain Sensors, Original Body Sensors, Smart Key, Keyless Entry, Leasing Can be Arranged"),
            ],
          ),
        ));
  }
}
