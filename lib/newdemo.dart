import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewDemo extends StatefulWidget {
  @override
  State<NewDemo> createState() => _NewDemoState();
}

class _NewDemoState extends State<NewDemo> {
  List itemColors = [Colors.green, Colors.purple, Colors.blue];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: CarouselSlider(
                    items: [
                      for (int i = 0; i < itemColors.length; i++)
                        Container(
                          // alignment: Alignment.center,

                          // decoration: BoxDecoration(
                          //   color: itemColors[i],
                          //   borderRadius: BorderRadius.circular(20),
                          // ),
                          child: Container(
                            width: screenWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/ads.png",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                    ],
                    options: CarouselOptions(
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            print(reason.toString());
                            currentIndex = index;
                          });
                        },
                        autoPlay: true),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 1,
                  right: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < itemColors.length; i++)
                        Container(
                          height: 13,
                          width: 13,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: currentIndex == i
                                  ? Colors.blue
                                  : Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 1,
                                    blurRadius: 3,
                                    offset: Offset(2, 2))
                              ]),
                        )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
