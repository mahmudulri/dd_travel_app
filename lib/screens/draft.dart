import 'package:carousel_slider/carousel_slider.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/app_colors.dart';

class DraftPage extends StatefulWidget {
  DraftPage({super.key});

  @override
  State<DraftPage> createState() => _DraftPageState();
}

class _DraftPageState extends State<DraftPage> with TickerProviderStateMixin {
  TabController? _tabController;
  int selectedWidget = 0;

  List<Widget> mywidgets = [
    Center(child: Text("Homepage")),
    Center(child: Text("Person")),
  ];

  void changeWidget(int index) {
    setState(() {
      selectedWidget = index;
    });
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // extendBody: true,
        // bottomNavigationBar: Container(
        //   margin: EdgeInsets.all(20),
        //   color: Colors.grey,
        //   child: TabBar(controller: _tabController, tabs: [
        //     Tab(
        //       icon: Icon(Icons.home),
        //     ),
        //     Tab(
        //       icon: Icon(Icons.person),
        //     )
        //   ]),
        // ),
        // body: TabBarView(
        //   controller: _tabController,
        //   children: [
        //     HomeScreen(),
        //     Center(child: Text("Person")),
        //   ],
        // ),
        body: Column(
          children: [
            // SizedBox(
            //   height: 100,
            // ),
            CarouselSlider(
              options: CarouselOptions(
                height: 300,
                viewportFraction: 1,
                // enlargeCenterPage: false,
              ),

              items: [
                // Container(
                //   width: screenWidth,
                //   decoration: BoxDecoration(
                //     color: Colors.transparent,
                //     image: DecorationImage(
                //       image: AssetImage(
                //         "assets/images/ads.png",
                //       ),
                //       fit: BoxFit.fitHeight,
                //     ),
                //   ),
                // ),
              ],
              // items: [1, 2, 3, 4, 5].map((i) {
              //   return Container(
              //     width: screenWidth,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage(
              //           "assets/images/ads.png",
              //         ),
              //         fit: BoxFit.fitWidth,
              //       ),
              //     ),
              //     // child: Image(
              //     //   fit: BoxFit.fill,
              //     //   image: AssetImage(
              //     //     "assets/images/ads.png",
              //     //   ),
              //     // ),
              //   );
              // }).toList(),
            ),
            // Container(
            //   height: 350,
            //   width: screenWidth,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       fit: BoxFit.cover,
            //       image: AssetImage("assets/images/ads.png"),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.green,
          ),
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.yellow,
          ),
          Container(
            height: 500,
            width: double.infinity,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
