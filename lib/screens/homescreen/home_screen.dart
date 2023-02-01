import 'package:dd_travel_app/screens/homescreen/widgets/home_screen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import '../../const/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xffF7F7F7),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 30,
                  ),
                  // height: 150,
                  width: screenWidth,
                  decoration: BoxDecoration(
                      // color: Colors.blueGrey,
                      ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                        radius: 35,
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
                                    child:
                                        Icon(Icons.notifications_none_outlined),
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
                SizedBox(
                  height: screenHeight * 0.010,
                ),

                // ...............Search bar ///////////////////

                SizedBox(
                  height: screenHeight * 0.055,
                  width: screenWidth,
                  // color: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          height: screenHeight * 0.055,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Container(
                                height: screenHeight * 0.055,
                                width: screenWidth * 0.50,
                                child: TextField(
                                  maxLines: 3,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Where do you wanna go ?",
                                    hintStyle: GoogleFonts.roboto(
                                      color: Color(0xff9C9C9C),
                                      fontWeight: FontWeight.w400,
                                      // fontSize: screenWidth * 0.030,
                                      fontSize: screenWidth * 0.035,
                                    ),
                                  ),
                                ),
                                // child: Text(
                                //   "Where do you wanna go ?",
                                //   style: GoogleFonts.roboto(
                                //     color: Color(0xff9C9C9C),
                                //     fontWeight: FontWeight.w400,
                                //     // fontSize: screenWidth * 0.030,
                                //     fontSize: screenWidth * 0.035,
                                //   ),
                                // ),
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
                        width: screenWidth * 0.040,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff08BA64),
                            borderRadius: BorderRadius.circular(10),
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

                SizedBox(
                  height: 10,
                ),
                //////////......................Categories...........................//
                ///
                SizedBox(
                  // color: Colors.red,
                  width: screenWidth,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        democategories("assets/images/categories_images/1.png",
                            "Hotel/Resort"),
                        democategories("assets/images/categories_images/2.png",
                            "Resturatnt"),
                        democategories(
                            "assets/images/categories_images/3.png", "Cruise"),
                        democategories(
                            "assets/images/categories_images/4.png", "Flight"),
                        democategories(
                            "assets/images/categories_images/1.png", "Hotel"),
                        democategories("assets/images/categories_images/2.png",
                            "Resturatnt"),
                        democategories(
                            "assets/images/categories_images/3.png", "Cruise"),
                        democategories(
                            "assets/images/categories_images/4.png", "Flight"),
                      ],
                    ),
                  ),
                ),

                //  ...................................................Ads section...................//

                SizedBox(
                  height: screenHeight * 0.020,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Offers for you",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.050,
                            color: Color(0xff131B1A),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 2,
                          width: 60,
                          color: Color(0xffD0D0D0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xffD0D0D0),
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),

                Container(
                  height: 230,
                  child: CarouselSlider.builder(
                    slideBuilder: (index) {
                      return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/ads.png",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                    slideIndicator: CircularSlideIndicator(
                      currentIndicatorColor: Colors.white,
                      padding: EdgeInsets.only(bottom: 35),
                      indicatorBorderColor: Colors.white,
                    ),
                    itemCount: 4,
                    initialPage: 0,
                  ),
                ),

                //...............................Popular Deals...................//
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Popular Deals",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: screenWidth * 0.050,
                            color: Color(0xff131B1A),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 2,
                          width: 60,
                          color: Color(0xffD0D0D0),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.arrow_forward,
                          color: Color(0xffD0D0D0),
                          size: 35,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                PopularDeals(
                  hotelName: "Seagull Hotel",
                  locationName: "Cox,s Bazaar",
                  mainPrice: 12000,
                  discontPrice: 6000,
                  discont: "50%",
                  reviews: 120,
                  initialRating: 5,
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                PopularDeals(
                  hotelName: "Vistabay Resort",
                  locationName: "Chattagram",
                  mainPrice: 20000,
                  discontPrice: 12000,
                  discont: "40%",
                  reviews: 131,
                  initialRating: 3,
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                PopularDeals(
                  hotelName: "Abc Hotel Service",
                  locationName: "Dhaka",
                  mainPrice: 10000,
                  discontPrice: 4000,
                  discont: "60%",
                  reviews: 111,
                  initialRating: 4,
                ),

                SizedBox(
                  height: screenHeight * 0.060,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget democategories(String imagename, String catName) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 10),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(imagename),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          catName,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: Color(0xff9C9C9C),
            fontSize: 10,
          ),
        ),
      ],
    );
  }
}
