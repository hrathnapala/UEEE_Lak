import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:lak_app/src/screens/profile-page/settings-model.dart';
import 'settings-model.dart';

class MainProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: Container(
        child: ListView.builder(
          itemCount: SettingsModel.dummyData.length,
          itemBuilder: (context, index) {
            SettingsModel _model = SettingsModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: _model.icon,
                  title: Row(
                    children: <Widget>[
                      Container(
                        width: 250.0,
                        child: Text(
                          _model.settingName,
                          style: TextStyle(
                            fontSize: 18.0,
                            //fontWeight: FontWeight.w600,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => _model.nextPage,
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
