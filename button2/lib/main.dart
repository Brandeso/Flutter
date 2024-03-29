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

  String _value = 'Hello World';

  void _onPressed(String value) {
    setState(() {
      _value = value;
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
              new Text(_value),
              new RaisedButton(onPressed: () => _onPressed('Hello Bruno'), child: new Text('Click me!'),)
            ],
          ),
        ),
      ),
    );
  }
}