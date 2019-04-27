import 'package:flutter/material.dart';

// Pages
import 'package:navigation_tab/pages/first.dart';
import 'package:navigation_tab/pages/second.dart';
import 'package:navigation_tab/pages/third.dart';

void main() {
  runApp(new MaterialApp(
    home: Navigator(),
  ));
}

class Navigator extends StatefulWidget {
  Navigator({Key key}) : super(key: key);

  _NavigatorState createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar'),
      ),
      body: new TabBarView(
        children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab()],
        controller: controller,
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
          tabs: <Tab>[new Tab(
            icon: new Icon(Icons.alarm)
          ),
          new Tab(
            icon: new Icon(Icons.watch_later)
          ),
          new Tab(
            icon: new Icon(Icons.airplanemode_active)
          )],
          controller: controller,
        ),
      ),
    );
  }
}