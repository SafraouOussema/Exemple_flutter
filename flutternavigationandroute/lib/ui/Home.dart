import 'package:flutter/material.dart';

class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.pinkAccent,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: new Text('Navigation '),
      ) ,
      body: new Container(
        padding: EdgeInsets.all(22.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('Hello, This Home'),
            new FlatButton(onPressed: (){Navigator.of(context)
                .pushNamedAndRemoveUntil('/Profile',(Route<dynamic> route)=> false);},
                child: new Text('To next Page'))
          ],
        ),
      ),
    ); 
  }
}

