import 'package:flutter/material.dart';
import 'package:flutternavigationandroute/ui/Home.dart';
import 'package:flutternavigationandroute/ui/Profile.dart';
import 'package:flutternavigationandroute/ui/Settings.dart';

void main() => runApp(new MaterialApp(
      home: new MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation main',
      routes: <String,WidgetBuilder>{
        '/Home':(BuildContext context)=> new Home(),
        '/Profile':(BuildContext context)=> new Profile(),
        '/Settings':(BuildContext context)=> new Settings(),
      },
      home: new Home(),
    );
  }

}