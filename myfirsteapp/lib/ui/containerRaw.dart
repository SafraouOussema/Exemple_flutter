import 'package:flutter/material.dart';

class contRaw extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.tealAccent,
      alignment: Alignment.center,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Text(
            "Safraou Oussema",
            textDirection: TextDirection.ltr,
            style: new TextStyle(color: Colors.deepOrange, fontSize: 24.2),
          ),
          Expanded(
            child: new Text(
              "Safraou Oussema",
              textDirection: TextDirection.ltr,
              style: new TextStyle(color: Colors.deepOrange, fontSize: 24.2),
            ),
          )
        ],
      ),
    );
  }
}
