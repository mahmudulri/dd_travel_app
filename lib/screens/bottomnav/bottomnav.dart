import 'package:dd_travel_app/screens/account.dart';
import 'package:dd_travel_app/screens/explore/explore.dart';
import 'package:dd_travel_app/screens/foryou/foryou_screen.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:dd_travel_app/screens/world/world_screen.dart';
import 'package:flutter/material.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  var _currentIndex = 0;
  bool pressed = false;
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

    // return Scaffold(
    //   body: pages[_currentIndex],
    // );

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color(0xff9C9C9C),
        selectedBackgroundColor: Colors.transparent,
        width: screenWidth - 10,
        borderRadius: 20,
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        items: [
          FloatingNavbarItem(
            // icon: Icons.home,

            customWidget: Image.asset(
              "assets/images/icons/home.png",
              height: 30,
              width: 30,
            ),
            title: 'Home',
          ),
          FloatingNavbarItem(
            customWidget: Image.asset(
              "assets/images/icons/explore.png",
              height: 30,
              width: 30,
            ),
            title: 'Explore',
          ),
          FloatingNavbarItem(
            customWidget: Image.asset(
              "assets/images/icons/foryou.png",
              height: 30,
              width: 30,
            ),
            title: 'For you',
          ),
          FloatingNavbarItem(
            customWidget: Image.asset(
              "assets/images/icons/world.png",
              height: 30,
              width: 30,
            ),
            title: 'World',
          ),
          FloatingNavbarItem(
            // ignore: deprecated_member_use
            icon: FontAwesomeIcons.home,
            // customWidget: Image.asset(
            //   "assets/images/icons/account.png",
            //   height: 30,
            //   width: 30,
            // ),
            title: 'Account',
          ),
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
