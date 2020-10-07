import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'chat-model.dart';
import 'conversation-page.dart';

// class MainMessagePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomeScreen(),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Messages'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.name),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  //subtitle: Text(_model.message),

                  subtitle: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 6.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            _model.adName,
                            style: TextStyle(
                              color: Colors.grey[700],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6.0,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            _model.message,
                            style: TextStyle(
                              color: Colors.grey[500],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  isThreeLine: true,

                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 14.0,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConversationApp(),
                      ),
                    );
                  },
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
