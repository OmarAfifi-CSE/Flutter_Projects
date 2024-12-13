import 'dart:io';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'Home'},
    {'page': const CalendarScreen(), 'title': 'Calendar'},
    {'page': const SettingsScreen(), 'title': 'Settings'},
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex]['page'],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          backgroundColor: Colors.white,
          selectedItemColor: const Color(0xFF2196F3),
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

}