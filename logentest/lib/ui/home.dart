import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: new Text('Login'),
      ),
      body: new Container(
        padding: EdgeInsets.all(15.0),
        child: new Column(
          children: <Widget>[
            new Center(
                child:new Text(
                  'Safraou oussema',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(fontSize: 22.0,color: Colors.deepOrange),

                )),



          ],
        ),
      ),
    );
  }
}
