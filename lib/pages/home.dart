import 'package:find_rooms_app/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'notification_page.dart';
import 'user_profile.dart';

class Home extends StatefulWidget {
  // String name;
  // String email;
  // Home({required this.name,required this.email});


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex =0;

  void _navigateBottomNavBar(index)
  {
    setState(() {
      _selectedIndex=index;
    });
  }

  //list of different pages
  final List<Widget> _pages=[
    HomePage(),
    UserProfilePage(),
    NotificationPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
      ),
    );
  }
}