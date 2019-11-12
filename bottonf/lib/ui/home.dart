import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return new _HomeState();
  }

}

class _HomeState extends State<Home>{
  String name ='';
  String myNum ='';
  void onClickbtn(){
    setState(() {
      name = 'Safraou Oussema';
    });
  }
  void onClickbtn2(String text){
    setState(() {
      name = text;
    });
  }
  void onClickAndroid(){
    setState(() {
      myNum ='android';
    });
  }

  void onClickIphone(){
    setState(() {
      myNum ='iphone';
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar:  AppBar(
      backgroundColor: Colors.deepPurple,
      title:new Text('Bottons'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(22.0),
        child: new Column(
          children: <Widget>[
            new Text('Hello $name'),
            new RaisedButton.icon(
                onPressed: onClickbtn,
                icon: new Icon(Icons.add),
                label: new Text('Click me')
            ),
            new RaisedButton.icon(
                onPressed:()=> onClickbtn2('This is parameter'),
                icon: new Icon(Icons.add_shopping_cart),
                label: new Text('Click me for parameter')
            ),
            new FlatButton(onPressed: onClickbtn, 
              child: new Text("Click me"),
              color: Colors.deepPurpleAccent,
            ),
            new Text('ths result is : $myNum'),
            new IconButton(icon: new Icon(Icons.phone_android), onPressed: onClickAndroid),
            new IconButton(icon: new Icon(Icons.phone_iphone), onPressed: onClickIphone),
          ],
        ),

      ),
    );
  }

}