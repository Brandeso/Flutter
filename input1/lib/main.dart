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

  String _value = '';

  void _onChange(String value) {
    setState(() {
      _value = 'Change: $value';
    });
  }

  void _onSubmit(String value){
    setState(() {
      _value = 'Submit: $value';
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
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Hello',
                  hintText: 'Hint',
                  icon: new Icon(Icons.subway),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.number,
                onChanged: _onChange,
                onSubmitted: _onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}