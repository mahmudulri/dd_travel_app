import 'package:dd_travel_app/screens/account.dart';
import 'package:dd_travel_app/screens/explore/explore.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var _currentIndex = 0;
  final pages = [
    HomeScreen(),
    ExploreScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    // var screenHeight = MediaQuery.of(context).size.height;
    // var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      // backgroundColor: Color(0xffF7F7F7),
      bottomNavigationBar: FloatingNavbar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        currentIndex: _currentIndex,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
          FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Chats'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: Center(child: pages[_currentIndex]),
    );
  }
}
