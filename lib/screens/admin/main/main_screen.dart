import 'package:findcozy/screens/admin/akun/akun_screen.dart';
import 'package:findcozy/screens/admin/home/home_screen.dart';
import 'package:findcozy/screens/admin/kelola/kelola_screen.dart';
import 'package:findcozy/theme.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController _pageController = PageController();

  List<Widget> _screens = [
    HomeScreen(),
    KelolaScreen(),
    AkunScreen(),
  ];

  int _selectedIndex = 0;

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: _selectedIndex == 0 ? lightBlue : grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: _selectedIndex == 0 ? lightBlue : grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: _selectedIndex == 1 ? lightBlue : grey,
            ),
            title: Text(
              'Kelola',
              style: TextStyle(color: _selectedIndex == 1 ? lightBlue : grey),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_rounded,
              color: _selectedIndex == 2 ? lightBlue : grey,
            ),
            title: Text(
              'Akun',
              style: TextStyle(color: _selectedIndex == 2 ? lightBlue : grey),
            ),
          ),
        ],
      ),
    );
  }
}
