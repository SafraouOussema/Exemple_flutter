import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      color: Colors.tealAccent,
      alignment: Alignment.center,
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           new Text(
            "Safraou Oussema",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                color: Colors.deepOrange,fontSize: 24.2
            ),
          ),

           new Container(

             color: Colors.purpleAccent,
             alignment: Alignment.topLeft,
             child:  new Text(
               "Test ",
               textDirection: TextDirection.ltr,
               style: new TextStyle(
                   color: Colors.black,fontSize: 24.2
               ),
             ),
           ),
           new Text(
            "Safraou Oussema Jerbi",
            textDirection: TextDirection.ltr,
            style: new TextStyle(
                color: Colors.deepOrange,fontSize: 24.2
            ),
          ),


        ],
      ),

    );
  }
}
