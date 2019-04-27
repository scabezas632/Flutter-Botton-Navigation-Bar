import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  const FirstTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.red,
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.alarm,
                size: 160.0,
                color: Colors.white,
              ),
              new Text('Primer Tab', style: new TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}