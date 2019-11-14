import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }
}

class _HomeState extends State<Home> {
  bool valuebox = true;
  bool valuebox2 = false;
  bool valuebox3 = true;

  bool valueswitch = true;
  bool valueswitch2 = false;

  String name = '';
  String phone = '';

  void onChangeValue(String value) {
    setState(() {
      name = '$value';
    });
  }

  void onChangeValuepassword(String value) {
    setState(() {
      phone = '$value';
    });
  }

  void onSubmitValue(String value) {
    setState(() {
      name = 'on Submit: $value';
    });
  }

  void onChangeValuebox(bool value) {
    setState(() {
      valuebox = value;
    });
  }

  void onChangeValuebox2(bool value) {
    setState(() {
      valuebox2 = value;
    });
  }

  void onChangeValuebox3(bool value) {
    setState(() {
      valuebox3 = value;
    });
  }

  void onChangeswitch (bool value){
    setState(() {
      valueswitch = value;
    });
  }

  void onChangeswitch2 (bool value){
    setState(() {
      valueswitch2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('Safraou App'),
      ),
      body: new Container(
        color: Colors.deepPurpleAccent,
        padding: new EdgeInsets.all(12.2),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.text,
              cursorColor: Colors.deepOrange,
              decoration: new InputDecoration(
                icon: Icon(Icons.perm_identity),
                labelText: 'Your email : $name',
              ),
              onChanged: onChangeValue,
              onSubmitted: onSubmitValue,
            ),
            new TextField(
              keyboardType: TextInputType.phone,
              cursorColor: Colors.deepOrange,
              decoration: new InputDecoration(
                icon: Icon(Icons.phone),
                labelText: 'Your phone : $phone',
              ),
              onChanged: onChangeValuepassword,
            ),
            new Checkbox(
              value: valuebox,
              onChanged: onChangeValuebox,
              activeColor: Colors.purple,
            ),
            new Checkbox(value: valuebox2,
                onChanged: onChangeValuebox2
            ),
            new CheckboxListTile(
              value: valuebox3,
              onChanged: onChangeValuebox3,
              title: new Text('Hi how are you'),
              activeColor: Colors.purple,
              subtitle: new Text('Hi you want subtitle ?'),
              secondary: new Icon(Icons.check),
            ),
            new Switch(value: valueswitch,
                onChanged: onChangeswitch
            ),
            new SwitchListTile(
              value: valueswitch2,
              onChanged: onChangeswitch2,
              activeColor: Colors.purple,
              title: new Text('Hi how are Switch'),
              subtitle: new Text('Hi you want active switch ?'),
              secondary: new Icon(Icons.check),
            ),
          ],
        ),
      ),
      drawer: new Drawer(
        child:new Container(
          color: Colors.purpleAccent,
          padding: EdgeInsets.all(12.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FlatButton(onPressed: ()=>Navigator.pop(context), child: new Text('close',textDirection: TextDirection.ltr) ),
              new Text('Safraou',textDirection: TextDirection.ltr),
              new Text('Oussema',textDirection: TextDirection.ltr),
            ],
          ),
        )
      ),

    );
  }
}
