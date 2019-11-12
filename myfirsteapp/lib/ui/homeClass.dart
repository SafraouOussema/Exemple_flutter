import 'package:flutter/material.dart';
class Oussema extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.purpleAccent,
      child: new Center(
        child: new Text(
          "Jorthoma",
          textDirection: TextDirection.rtl,
          style: new TextStyle(
              fontStyle: FontStyle.italic, color: Colors.deepOrange),
        ),
      ),
    );
  }
}
