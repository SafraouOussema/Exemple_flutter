import 'package:flutter/material.dart';

class LoginScren extends StatefulWidget {
  @override
  _LoginScrenState createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color.fromRGBO(38, 50, 56, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 200,
          ),
          Center(
            child: Container(
              height: 300,
              width: 300,


            ),
          ),
          SizedBox(
            height: 80,
            width: 10,
          ),
          Container(
            height: 140,
            width: 530,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(border: InputBorder.none,hintText:'User name',contentPadding: EdgeInsets.all(20)),
                ),
                Divider(),
                TextField(obscureText: true,
                  decoration: InputDecoration(border: InputBorder.none,hintText:'Password',contentPadding: EdgeInsets.all(20)),
                ),
              ],
            ),
          ),
          Container(
            width: 530,
            height: 70,
            padding: EdgeInsets.only(top: 20),
            child: RaisedButton(
              color: Colors.pinkAccent,
              child :Text("Submit",style: TextStyle(color: Colors.white),),
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30)
              ),
              onPressed: (){

              },
          )
          ),
        ],
      ),
    );
  }
}
