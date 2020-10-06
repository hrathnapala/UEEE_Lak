import 'package:flutter/material.dart';
import './contact_details.dart';
// import './image_picker.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'dart:async';
import 'dart:io';

class ItemDetails extends StatefulWidget {
  @override
  ItemDetailsState createState() => ItemDetailsState();
}

class ItemDetailsState extends State<ItemDetails> {
  List<Asset> images = List<Asset>();
  String _error = 'No Error Dectected';
  final emailcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final passcontroller = TextEditingController();

  Widget buildGridView() {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      children: List.generate(images.length, (index) {
        Asset asset = images[index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = List<Asset>();
    String error = 'No Error Dectected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 300,
        enableCamera: true,
        selectedAssets: images,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#abcdef",
          actionBarTitle: "Example App",
          allViewTitle: "All Photos",
          useDetailsView: false,
          selectCircleStrokeColor: "#000000",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      images = resultList;
      _error = error;
    });
  }

  Widget _itemDetailsForm() {
    final emailField = TextField(
      obscureText: false,
      controller: emailcontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.title),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Title",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final name = TextField(
      obscureText: false,
      controller: namecontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.description),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Description",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final mobile = TextField(
      obscureText: false,
      controller: mobilecontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_balance_wallet),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Price",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final passwordField = TextField(
      obscureText: true,
      controller: passcontroller,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password Here",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: buildGridView(),
                ),
                // SizedBox(height: 15.0),
                // RaisedButton(
                //   child: Text("Pick images"),
                //   onPressed: loadAssets,
                // ),
                ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.blue)),
                    minWidth: 400.0,
                    child: RaisedButton(
                      onPressed: loadAssets,
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.blue[600],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Icon(Icons.camera_alt),
                          Text("  Select images")
                        ],
                      ),
                    )),
                SizedBox(height: 45.0),
                emailField,
                SizedBox(height: 25.0),
                name,
                SizedBox(height: 25.0),
                mobile,
                SizedBox(
                  height: 30,
                ),
                ButtonTheme(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.blue)),
                    minWidth: 400.0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactDetails()),
                        );
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.blue[600],
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // Replace with a Row for horizontal icon + text
                        children: <Widget>[
                          Text(
                            "Next  ",
                            style: TextStyle(fontSize: 20),
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemDetailsForm() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item Details'),
        backgroundColor: Colors.blue,
      ),
      body: _itemDetailsForm(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post your Ad'),
        backgroundColor: Colors.blue[900],
      ),
      body: _buildItemDetailsForm(),
    );
  }
}
