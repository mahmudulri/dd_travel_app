import 'package:dd_travel_app/screens/account.dart';
import 'package:dd_travel_app/screens/explore.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';

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
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 20,
          left: 30,
          right: 30,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_work_outlined,
                  color: Color(0xff08BA64),
                  size: screenWidth * 0.08,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.lock_clock_outlined,
                  size: screenWidth * 0.08,
                ),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box,
                  size: screenWidth * 0.08,
                ),
                label: "Account",
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
      body: pages[_currentIndex],
    );
  }
}
