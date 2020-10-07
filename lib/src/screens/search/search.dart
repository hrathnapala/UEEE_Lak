import 'package:flutter/material.dart';
import './search-category.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Search",
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                      // fillColor: Color(0xffd9d9d9),
                      // filled: true,
                      hintText: "Search for a Category",
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                      contentPadding:
                          EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 15.0),
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
              SearchCategory(),
              
            ],
          ),
        ));
  }
}

/*      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                autofocus: false,
                decoration: InputDecoration(
                    fillColor: Color(0xffd9d9d9),
                    filled: true,
                    hintText: "Search for a Category",
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
          ],
        ),
      ),
    );
  }
}
*/
