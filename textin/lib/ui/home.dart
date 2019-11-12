import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
     return new _HomeState();
  }
}
class _HomeState extends State<Home>{

  String name ='';
  String phone ='';
  void onChangeValue(String value){
    setState(() {
       name ='$value';
    });
  }
  void onChangeValuepassword(String value){
    setState(() {
      phone ='$value';
    });
  }


  void onSubmitValue(String value){
    setState(() {
       name ='on Submit: $value';
    });
  }



  @override
  Widget build(BuildContext context) {
     return new Scaffold(
       appBar:  AppBar(
         backgroundColor: Colors.deepPurple,
         title: new Text('Safraou App'),
       ),
       body:new Container(
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
             )

           ],
         ),
       ),
     );


  }

}
