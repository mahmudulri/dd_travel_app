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
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                child: BottomNavigationBar(
                  backgroundColor: Colors.white,
                  currentIndex: _currentIndex,
                  items: [
                    BottomNavigationBarItem(
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
                        "assets/images/icons/cloudy.png",
                        height: 30,
                        width: 30,
                        color: Colors.grey,
                      ),
                      activeIcon: Image.asset(
                        "assets/images/icons/cloudy.png",
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
