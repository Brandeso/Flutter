import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  int _value = 0;

  void _add() {
    setState(() {
      _value++;
    });
  }

  void _substract() {
    setState(() {
      _value--;
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold( // The stricture on which we build aour Material App
      appBar: new AppBar(
        title: new Text('Insert Title Here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new Text('Hello World'),
              new Text('Current Value is:  ($_value) '),
              new IconButton(icon: new Icon(Icons.add_circle), onPressed: () => _add()),
              new IconButton(icon: new Icon(Icons.remove_circle), onPressed: () => _substract()),
            ],
          ),
        ),
      ),
    );
  }
}