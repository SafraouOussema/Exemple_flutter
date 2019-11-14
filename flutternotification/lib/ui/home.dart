import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Rewind and remember'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('You will never be satisfied.'),
                Text('You\’re like me. I’m never satisfied.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }


  void showBootomSheet(){
    showModalBottomSheet(context: context,
      builder: (BuildContext context){
      return new Container(
        color: Colors.purple,
        padding: EdgeInsets.all(22.0),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          new Text('Hello Safraou Oussema'),
          new FlatButton(onPressed: ()=>Navigator.pop(context),
              child:new Text('Close')
          )
          ],
        ),
      );
      }

    );
  }

  String myValue ='oussema';
  void SetValueOn(String value){
   setState(() {
     myValue = value ;
   });
  }

  Future showSimpleDia() async{
    await showDialog(context: context,
        builder:  (BuildContext context) {
          return  new SimpleDialog(
            title:  new Text('Muhammed Essa'),
            children: <Widget>[
              new SimpleDialogOption(child:new Text('Yes') ,
                onPressed: (){Navigator.pop(context,SetValueOn('YES'));},),
              new SimpleDialogOption(child:new Text('No') ,
                onPressed: (){Navigator.pop(context,SetValueOn('No'));},),
              new SimpleDialogOption(child:new Text('Maybe') ,
                onPressed: (){Navigator.pop(context,SetValueOn('Maybe'));},),
            ],
          );
        });
  }


  final GlobalKey<ScaffoldState> scaffoldState= new GlobalKey<ScaffoldState>();

  showSnackBar(){
    scaffoldState.currentState.showSnackBar(new SnackBar(content: new Text('Hey Safraou oussema')));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      backgroundColor: Colors.purpleAccent,
      key : scaffoldState,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: new Text('Notification'),
      ),
      body: new Container(
        padding: EdgeInsets.all(22.0),
        child: new Center(
          child :new Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('$myValue'),
              new FlatButton(onPressed: showBootomSheet, child: new Text('Show Bootom Sheet')),
              new FlatButton(onPressed: _neverSatisfied, child: new Text('Click me')),
              new FlatButton(onPressed: showSimpleDia, child: new Text('Show Simple Dialoge')),
              new FlatButton(onPressed: showSnackBar,child: new Text('Show Snack Bar'),),
              new Card(
                color: Colors.pinkAccent,
                margin: EdgeInsets.all(22.0),
                child: new Column(
                  
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text('$myValue'),
                    new FlatButton(onPressed: showBootomSheet, child: new Text('Show Bootom Sheet')),
                    new FlatButton(onPressed: _neverSatisfied, child: new Text('Click me')),
                    new FlatButton(onPressed: showSimpleDia, child: new Text('Show Simple Dialoge')),
                    new FlatButton(onPressed: showSnackBar,child: new Text('Show Snack Bar'),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
