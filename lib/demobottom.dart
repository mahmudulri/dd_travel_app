import 'package:dd_travel_app/screens/explore/explore.dart';
import 'package:dd_travel_app/screens/foryou/foryou_screen.dart';
import 'package:dd_travel_app/screens/world/world_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'screens/account.dart';
import 'screens/homescreen/home_screen.dart';

class DemoBottom extends StatefulWidget {
  const DemoBottom({super.key});

  @override
  State<DemoBottom> createState() => _DemoBottomState();
}

final pages = [
  HomeScreen(),
  ExploreScreen(),
  ForYouScreen(),
  WorldScreen(),
  AccountScreen(),
];

class _DemoBottomState extends State<DemoBottom> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBody: true,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  selectedItemColor: Color(0xff08BA64),
                  unselectedItemColor: Color(0xff9C9C9C),
                  showUnselectedLabels: true,
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/home.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff9C9C9C),
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/home.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff08BA64),
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/explore.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff9C9C9C),
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/explore.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff08BA64),
                      ),
                      label: "Explore",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/foryou.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff9C9C9C),
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/foryou.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff08BA64),
                      ),
                      label: "For You",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/world.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff9C9C9C),
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/world.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff08BA64),
                      ),
                      label: "World",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/account.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff9C9C9C),
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/account.png",
                        height: 30,
                        width: 30,
                        color: Color(0xff08BA64),
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
          ),
          body: pages[_currentIndex]),
    );
  }
}
