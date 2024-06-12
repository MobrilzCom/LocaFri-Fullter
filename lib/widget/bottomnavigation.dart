import 'package:carapp/screen/Listof_cars/cardetail_list.dart';
import 'package:carapp/screen/Listof_cars/ListOfCar.dart';
import 'package:carapp/screen/auth/Profile/profile.dart';
import 'package:carapp/screen/home/home.dart';
import 'package:carapp/screen/key_box/keybox.dart';
import 'package:carapp/screen/mainpage/mainpage.dart';
import 'package:carapp/screen/whistlist/whistlist.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatefulWidget {
   BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
int _currentindex = 0;

  List<Widget> pages=  [
    MainPage(),
    ListOfCar(),
    KeyBox(),
  ];

 void _onItemTapped(int index) {
    setState(() {
      _currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange,
        currentIndex: _currentindex,
         onTap: _onItemTapped,
        iconSize: 30,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: const [
         BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car), label: 'Mobility'),
              // room_service
          BottomNavigationBarItem(icon: Icon(Icons.wifi), label: 'KeyBox'),
        
        // selectedItemColor: Colors.orange,
      ]),
      body:IndexedStack(
        children: pages,
        index: _currentindex,
      )
    );
  }
}