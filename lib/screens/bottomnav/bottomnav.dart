import 'package:dd_travel_app/screens/account.dart';
import 'package:dd_travel_app/screens/explore/explore.dart';
import 'package:dd_travel_app/screens/foryou/foryou_screen.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:dd_travel_app/screens/world/world_screen.dart';
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
    ForYouScreen(),
    WorldScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: pages[_currentIndex],
    );

    // return Scaffold(
    //   extendBody: true,
    //   bottomNavigationBar: FloatingNavbar(

    //     width: screenWidth - 10,
    //     borderRadius: 20,
    //     backgroundColor: Colors.red,
    //     currentIndex: _currentIndex,
    //     items: [
    //       FloatingNavbarItem(icon: Icons.home, title: 'Home'),
    //       FloatingNavbarItem(icon: Icons.explore, title: 'Explore'),
    //       FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'For you'),
    //       FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'World'),
    //       FloatingNavbarItem(icon: Icons.chat_bubble_outline, title: 'Account'),
    //     ],
    //     onTap: (index) {
    //       setState(() {
    //         _currentIndex = index;
    //       });
    //     },
    //   ),
    //   body: Center(child: pages[_currentIndex]),
    // );
  }
}
