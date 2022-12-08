// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

void main() => runApp(const Mybottom());

class Mybottom extends StatelessWidget {
  const Mybottom({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Card(
        // ignore: sized_box_for_whitespace
        child: SizedBox(
      width: 300,
      height: 300,
      child: Center(
          child: Image(
        image: AssetImage('assets/images/nemrut.png'),
        width: 300,
        height: 300,
      )),
    )),
    Image(
      image: AssetImage('assets/images/map.png'),
    ),
    Image(
      image: AssetImage('assets/images/Kahta_02_SK.png'),
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
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
            backgroundColor: Color(0xff79612C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.terrain),
            label: 'Tarihi Yerler',
            backgroundColor: Color(0xff79612C),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Coğrafya',
            backgroundColor: Color(0xff881217),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'KahtaSpor',
            backgroundColor: Color(0xff999999),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
