import 'package:flutter/material.dart';
import 'package:flutternavigationandroute/Metier/GlobalState.dart';

class Settings extends StatefulWidget {


  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  GlobalState _store = GlobalState.instance ;


  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('Navigation '),
      ) ,
      body: new Container(
        padding: EdgeInsets.all(22.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hello, This Settings'),
            new Text('your name is ${_store.get('name')}'),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlatButton(onPressed: (){Navigator.of(context)
                    .pop();},
                    child: new Text('Back')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

