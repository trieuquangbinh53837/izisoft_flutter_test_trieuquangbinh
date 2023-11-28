// main.dart
import 'package:flutter/material.dart';
import 'package:thuctap/home_page.dart';
import 'package:thuctap/categories_page.dart';
import 'package:thuctap/cart_page.dart';
import 'package:thuctap/profile_page.dart';
import 'package:thuctap/navbar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationBar(
        [
          HomePage(),
          CategoriesPage(),
          CartPage(),
          ProfilePage(),
        ],
      ),
    );
  }
}
// navbar.dart

class NavigationBar extends StatefulWidget {
  final List<Widget> pages;

  NavigationBar(this.pages);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 35, color: Colors.grey),
            label: 'Home',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded,size: 35,color: Colors.grey),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.heart_broken_rounded,size: 35,color: Colors.grey),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined,size: 35,color: Colors.grey),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

