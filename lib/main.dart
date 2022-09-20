

import 'package:flutter/material.dart';
import 'package:growmate_ui/lower_portion/low.dart';
import 'package:growmate_ui/mid_portion/mid.dart';
import 'package:growmate_ui/upper_portion/upper_portion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primaryColor: Colors.white),
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: NavigationBar()),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
   return Column(
      children: [
        UpperPortion(),
        MiddlePortion(),
        LowerPortion()
      ],
    );
  }
}


class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
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
        elevation: 0,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.white),
        // backgroundColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            
            icon: Image.asset('assets/icons/news.png',color: Color(0xFF000000),),
            label: '',
            activeIcon:Image.asset('assets/icons/smarket.png'),
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/markets.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/portfolio.png'),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png'),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        // selectedItemColor: Colors.pink,
        onTap: _onItemTapped,
      ),
    );
  }
}