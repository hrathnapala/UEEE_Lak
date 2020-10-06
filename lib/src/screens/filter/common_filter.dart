import 'package:flutter/material.dart';
import 'package:lak_app/main.dart';
import 'package:lak_app/src/screens/homepage.dart';

class CommonFilter extends StatefulWidget {
  @override
  _CommonFilterState createState() => _CommonFilterState();
}

class _CommonFilterState extends State<CommonFilter> {
  String dropdownValue = 'Date:Newest first';
  String dropdownValue2 = 'All Posters';
  String dropdownValue3 = 'All';
  bool check = true;
  String groupvalue = "no";

  final toPrice = TextEditingController();
  final fromPrice = TextEditingController();

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
            Navigator.of(context).pop();
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
                  height: size.height * 0.02,
                ),
                Text(
                  "Sort by:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
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
                  "Type of poster:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
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
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Radio(
                        value: "yes",
                        groupValue: groupvalue,
                        onChanged: (val) {
                          setState(() {
                            groupvalue = val;
                          });
                        }),
                    Text("For Sale",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black87)),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    Radio(
                        value: "no",
                        groupValue: groupvalue,
                        onChanged: (val) {
                          setState(() {
                            groupvalue = val;
                          });
                        }),
                    Text("Wanted to buy",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.black87)),
                  ],
                ),
                SizedBox(height: size.height * 0.03),
                Text(
                  "Condition:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                DropdownButton<String>(
                  isDense: true,
                  isExpanded: true,
                  value: dropdownValue3,
                  elevation: 20,
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                  underline: Container(
                    height: 2,
                    color: Colors.black,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue3 = newValue;
                    });
                  },
                  items: <String>[
                    'All',
                    'New',
                    'Used',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Price:",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  controller: toPrice,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'From',
                    prefixIcon: Icon(Icons.money_off),
                  ),
                ),
                TextField(
                  controller: fromPrice,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'To',
                    prefixIcon: Icon(Icons.money_off),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                Center(
                  child: Column(
                    children: [
                      Text(
                        "Filter ads by:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Checkbox(
                              value: check,
                              onChanged: (value) {
                                setState(() {
                                  check = value;
                                });
                              }),
                          Text("Urgent")
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.01),
                Center(
                    child: RaisedButton(
                  onPressed: () {
                    // Navigator.of(context).push(MaterialPageRoute(
                    //             builder: (context) => MyApp()));
                    if (toPrice.text.length != 0 &&
                        fromPrice.text.length != 0) {
                      Navigator.of(context)
                          .pop("filters: Rs ${fromPrice.text} - ${toPrice.text}");
                    } else {
                      Navigator.of(context).pop("");
                    }
                  },
                  child: Text("Apply Filters"),
                  color: Color(0xff55b4d4),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.blueGrey)),
                ))
              ],
            ),
          )),
    );
  }
}
