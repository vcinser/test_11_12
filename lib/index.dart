import 'package:flutter/material.dart';
import 'package:test_11_12/camera.dart';
import 'package:test_11_12/home.dart';
import 'package:test_11_12/menu.dart';
import 'package:test_11_12/person.dart';
import 'package:test_11_12/shoping.dart';

class Index extends StatefulWidget {
  const Index({super.key});
  @override
  State<Index> createState() => _HomeState();
}

class _HomeState extends State<Index> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  final List<Widget> _widgetOptions = <Widget>[
    // const Home(),
    const Shoping(),
    const Camera(),
    // const Person(),
    const Menu(),
  
  ];

 void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_camera_front_rounded),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: ""
          ),
        ],
        currentIndex: _selectedIndex, 
        selectedItemColor: Colors.black, // 눌렀을떄 아이콘 색상
        unselectedItemColor: Colors.grey, // 아이콘 색상 변경 
        type: BottomNavigationBarType.fixed, // 애니메이션 적용 해제 
        onTap: _onItemTapped,
      ),
    );
  }
}
