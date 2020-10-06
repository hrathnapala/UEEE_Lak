import 'package:flutter/material.dart';
import '../homepage.dart';

class ContactDetails extends StatefulWidget {
  @override
  ContactDetailsState createState() => ContactDetailsState();
}

class ContactDetailsState extends State<ContactDetails> {
  final emailcontroller = TextEditingController();
  final namecontroller = TextEditingController();
  final mobilecontroller = TextEditingController();
  final passcontroller = TextEditingController();

  Widget _contactDetailsForm() {
    final emailField = TextField(
      obscureText: false,
      controller: emailcontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Name",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final name = TextField(
      obscureText: false,
      controller: namecontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.contact_phone),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Phone Number",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );
    final mobile = TextField(
      obscureText: false,
      controller: mobilecontroller,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(10.0))),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                      },
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.blue[600],
                      child: Text(
                        'Post',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildContactDetailsForm() {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact Details'),
        backgroundColor: Colors.blue,
      ),
      body: _contactDetailsForm(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post your Ad'),
        backgroundColor: Colors.blue[900],
      ),
      body: _buildContactDetailsForm(),
    );
  }
}
