import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import './map.dart';
import './need_help.dart';
import './can_help.dart';
import './i_have_a_store.dart';

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Map(),
    NeedHelp(),
    CanHelp(),
    IHaveAStore(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  TabData _tabBtn(IconData icon) => TabData(iconData: icon, title: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          _tabBtn(Icons.map),
          _tabBtn(Icons.help),
          _tabBtn(Icons.people),
          _tabBtn(Icons.store),
        ],
        onTabChangedListener: _onItemTapped,
      ),
    );
  }
}
