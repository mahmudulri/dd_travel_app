import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF7F7F7),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    height: 150,
                    width: screenWidth,
                    decoration: BoxDecoration(
                        // color: Colors.blueGrey,
                        ),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF7F7F7),
                          radius: 40,
                          child: Image.asset("assets/images/profile.png"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, John !",
                                style: GoogleFonts.roboto(
                                  color: Color(0xff131B1A),
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Color(0xff9C9C9C),
                                    size: screenWidth * 0.040,
                                  ),
                                  Text(
                                    "Dhaka",
                                    style: GoogleFonts.roboto(
                                      fontSize: screenWidth * 0.03,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff9C9C9C),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Icon(Icons.qr_code_scanner_rounded),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.020,
                                ),
                                Stack(
                                  children: [
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Icon(
                                          Icons.notifications_none_outlined),
                                    ),
                                    Positioned(
                                      right: 1,
                                      child: Container(
                                        height: 10,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  // ...............Search bar ///////////////////

                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    height: screenHeight * 0.080,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      color: Color(0xffF7F7F7),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: screenHeight * 0.080,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                children: [
                                  Text(
                                    "Where do you wanna go ?",
                                    style: GoogleFonts.roboto(
                                      color: Color(0xff9C9C9C),
                                      fontWeight: FontWeight.w400,
                                      // fontSize: screenWidth * 0.030,
                                      fontSize: screenWidth * .030,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color(0xff08BA64),
                                    size: screenWidth * 0.08,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff08BA64),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/emergency.png",
                                    height: 25,
                                    width: 25,
                                  ),
                                  Text(
                                    "Emergency",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenHeight * 0.010,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
