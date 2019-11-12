import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _onClickProfil() {
      print('Hello');
    }

    return new Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        title: new Text('Oussema'),
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[

          new IconButton(
              icon: new Icon(Icons.account_box), onPressed: _onClickProfil)
        ],
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Hello to may new App test with flutter",
              textDirection: TextDirection.ltr,
              style: new TextStyle(fontSize: 12.2, color: Colors.purpleAccent),
            ),
            new InkWell(
              child: new Text(
                "InkWell",
                textDirection: TextDirection.ltr,
                style: new TextStyle(fontSize: 12.2, color: Colors.tealAccent),
              ),
              onDoubleTap: () => debugPrint('double taped !'),
              onLongPress: () => debugPrint('long press !'),
            )
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: ()=>debugPrint("Floating Action Button") ,
        tooltip: 'Profil box',
        child: new Icon(Icons.account_box),
        backgroundColor: Colors.white10,
      ),
      bottomNavigationBar: new BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.home),title: new Text('Home')),
        new BottomNavigationBarItem(icon: new Icon(Icons.add_shopping_cart),title: new Text('Shopping')),
        new BottomNavigationBarItem(icon: new Icon(Icons.shopping_basket),title: new Text('Shopping basket'))
      ],
      onTap: (int x)=>debugPrint('$x'),
        backgroundColor: Colors.purple,
        fixedColor: Colors.purpleAccent,
      ),
    );
  }
}
