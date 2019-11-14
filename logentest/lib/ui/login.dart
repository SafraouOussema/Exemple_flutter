import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
class LoginScren extends StatefulWidget {
  @override
  _LoginScrenState createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  final usernameController = TextEditingController() ;
  final passwordController = TextEditingController() ;
  final usernameFocus = FocusNode();
  final passwordFocus = FocusNode();

  String username ='admin';
  String password ='admin';
  String animationtype ='idle';

  @override
    void initState(){
    passwordFocus.addListener((){
      if(passwordFocus.hasFocus){
       setState(() {
         animationtype ='test';
       });
      }else{
        setState(() {
          animationtype ='idle';
        });
      }
    });

    usernameFocus.addListener((){
      if(usernameFocus.hasFocus){
        setState(() {
          animationtype ='test';
        });
      }else{
        setState(() {
          animationtype ='idle';
        });
      }
    });

    super.initState();
      
    }

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
              child: CircleAvatar(
                //pour mettre l'animation dans le cercle
                child: ClipOval(
                child: new FlareActor("assets/teddy_test.flr",
                    alignment:Alignment.center,
                    fit: BoxFit.contain,
                    animation: animationtype,
                  ),
                ),
                backgroundColor: Colors.white,
              ),
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
                  controller: usernameController,
                  focusNode: usernameFocus,
                ),
                Divider(),
                TextField(obscureText: true,
                  decoration: InputDecoration(border: InputBorder.none,hintText:'Password',contentPadding: EdgeInsets.all(20)),
                  controller: passwordController,
                  focusNode: passwordFocus,
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
                if(passwordController.text.compareTo(password)==0){
                  setState(() {
                    animationtype='Success';
                  });
                }else{
                  setState(() {
                    animationtype='fail';
                  });
                }

                if(usernameController.text.compareTo(username)==0){
                  setState(() {
                    animationtype='success';
                  });
                }else{
                  setState(() {
                    animationtype='fail';
                  });
                }
              },
          )
          ),
        ],
      ),
    );
  }
}
