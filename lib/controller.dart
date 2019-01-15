import 'package:flutter/material.dart';
import 'queue.dart';
import 'home.dart';
import 'settings.dart';

class Laundry extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<Laundry> {
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Home(),
      Queue(post: fetchPost()),
      Settings(),
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home', style: TextStyle(fontWeight: FontWeight.bold),)),
      BottomNavigationBarItem(icon: Icon(Icons.queue), title: Text('Queue', style: TextStyle(fontWeight: FontWeight.bold),)),
      BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Personalize', style: TextStyle(fontWeight: FontWeight.bold),)),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}