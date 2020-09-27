import 'package:flutter/material.dart';

class LocationFilter extends StatefulWidget {
  @override
  _LocationFilterState createState() => _LocationFilterState();
}

class _LocationFilterState extends State<LocationFilter> {
  List<String> locations = [
    "Colombo",
    "kandy",
    "Galle",
    "Ampara",
    "Anuradhapura",
    "Badulla",
    "Batticaloa",
    "Gampaha",
    "Hambantota",
    "Jaffna",
    "Kalutara",
    "Kilinochchi",
    "Kurunegala",
    "Mannar",
    "Matale",
    "Matara",
    "Monaragala",
    "Mullativu",
    "Nuwara Eliya",
    "Polonnaruwa",
    "Puttalam",
    "Ratnapura",
    "Trincomalee",
    "Vavuniya"
  ];
  List<String> filteredlocation = [
    "Colombo",
    "kandy",
    "Galle",
    "Ampara",
    "Anuradhapura",
    "Badulla",
    "Batticaloa",
    "Gampaha",
    "Hambantota",
    "Jaffna",
    "Kalutara",
    "Kilinochchi",
    "Kurunegala",
    "Mannar",
    "Matale",
    "Matara",
    "Monaragala",
    "Mullativu",
    "Nuwara Eliya",
    "Polonnaruwa",
    "Puttalam",
    "Ratnapura",
    "Trincomalee",
    "Vavuniya"
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick a Location"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.close,
            size: 30,
          ),
          onPressed: () {
            Navigator.of(context).pop(null);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.transparent,
              height: size.height * 0.1,
              child: FlatButton.icon(
                  onPressed: () {
                    Navigator.of(context).pop("Malabe");
                  },
                  icon: Icon(Icons.location_on),
                  label: Text("Use Current Location")),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                onChanged: (text) {
                  text = text.toLowerCase();
                  setState(() {
                    filteredlocation = locations.where((location) {
                      var locationTitle = location.toLowerCase();
                      return locationTitle.contains(text);
                    }).toList();
                  });
                },
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Color(0xffd9d9d9),
                    filled: true,
                    hintText: "Search for a location",
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    contentPadding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop("Location");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 10.0),
                    child: Text(
                      "All of Sri Lanka",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.navigate_next),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.6,
              child: ListView.builder(
                itemCount: filteredlocation.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            '${filteredlocation[index]}',
                            style: TextStyle(fontSize: 16),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pop("${filteredlocation[index]}");
                          },
                        ),
                        Divider()
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
