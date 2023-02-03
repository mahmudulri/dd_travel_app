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
                  showUnselectedLabels: false,
                  showSelectedLabels: false,
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
                      backgroundColor: Colors.white,
                      icon: Image.asset(
                        "assets/images/icons/home.png",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/home.png",
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                      label: "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/explore.png",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/explore.png",
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                      label: "Person",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/foryou.png",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/foryou.png",
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                      label: "Person",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/world.png",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/world.png",
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                      label: "Person",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/images/icons/account.png",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/account.png",
                        height: 30,
                        width: 30,
                        color: Colors.red,
                      ),
                      label: "Person",
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
