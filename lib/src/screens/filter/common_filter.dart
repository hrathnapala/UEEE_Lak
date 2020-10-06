import 'package:flutter/material.dart';

class CommonFilter extends StatefulWidget {
  @override
  _CommonFilterState createState() => _CommonFilterState();
}

class _CommonFilterState extends State<CommonFilter> {
  String dropdownValue = 'Date:Newest first';
  String dropdownValue2 = 'All Posters';

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
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
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Text(
                  "Sort by",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                DropdownButton<String>(
                  isDense: true,
                  isExpanded: true,
                  value: dropdownValue,
                  elevation: 20,
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'Date:Newest first',
                    'Date:Oldest first',
                    'Price:Lowest to Highest',
                    'Price:Highest to Lowest'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: size.height * 0.04),
                Text(
                  "Sort by",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                DropdownButton<String>(
                  isDense: true,
                  isExpanded: true,
                  value: dropdownValue2,
                  elevation: 20,
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>[
                    'All Posters',
                    'Members',
                    'Authorized dealers',
                    'Non-members'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: size.height * 0.05),
                Row(
                  children: [
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("data")),
                    FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("data"))
                  ],
                ),
                SizedBox(height: size.height * 0.04),
                Text(
                  "Sort by",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 10),
                DropdownButton<String>(
                  isDense: true,
                  isExpanded: true,
                  value: dropdownValue2,
                  elevation: 20,
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue2 = newValue;
                    });
                  },
                  items: <String>[
                    'All Posters',
                    'Members',
                    'Authorized dealers',
                    'Non-members'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(height: size.height * 0.2),
                Center(
                    child: FlatButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.add),
                        label: Text("data")))
              ],
            ),
          )),
    );
  }
}
