import 'package:flutter/material.dart';

import 'package:flutternavigationandroute/Metier/GlobalState.dart';
class Profile extends StatefulWidget {


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  TextEditingController _name;
  GlobalState _store = GlobalState.instance ;

  @override
  void initState(){
    _name= new TextEditingController();
    _store.set('name', '');
    _name.text = _store.get('name');
  }

    onClickBtn(){
     _store.set('name', _name.text);
     Navigator.of(context).pushNamed('/Settings');
    }

  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: new Text('Navigation '),
      ) ,
      body: new Container(
        padding: EdgeInsets.all(22.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hello, This Profile'),
            new TextField(
              decoration: InputDecoration(labelText: 'enter name'),
              controller: _name,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlatButton(onPressed: onClickBtn, child: new Text('next')),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

