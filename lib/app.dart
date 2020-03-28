import 'package:flutter/material.dart';
import './map.dart';
import './need_help.dart';
import './can_help.dart';

BottomNavigationBarItem navIcon(IconData icon, String label) =>
    BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(label),
    );

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Map(),
    NeedHelp(),
    CanHelp(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          navIcon(Icons.map, 'Mapa'),
          navIcon(Icons.help, 'Preciso de ajuda'),
          navIcon(Icons.people, 'Posso ajudar'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
