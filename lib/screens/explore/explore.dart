import 'package:dd_travel_app/screens/homescreen/widgets/home_screen_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Image.asset(
              "assets/images/banner1.png",
              width: screenWidth,
              fit: BoxFit.cover,
              height: screenHeight * 0.350,
            ),
            SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.055,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Where do\nyou wanna go ?",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: screenHeight * 0.030,
                            color: Colors.white,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.white,
                                  )),
                              child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.asset(
                                    "assets/images/icons/cloudy.png",
                                    height: 40,
                                    width: 40,
                                  )),
                            ),
                            Text(
                              'Rainy',
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.150,
                  ),
                  Container(
                    // height: 250,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                      color: Color(0xffF7F7F7),
                      // color: Colors.yellow,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 130,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 5,
                            left: 20,
                            right: 20,
                          ),
                          height: 60,
                          width: screenWidth,
                          // color: Colors.red,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                width: 5,
                              );
                            },
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Image.asset(
                                            "assets/images/categories_images/2.png"),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Hotel / Resort"),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.010,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          child: PopularDeals(
                            hotelName: "Seagull Hotel",
                            locationName: "Cox bazaar",
                            mainPrice: 16000,
                            discontPrice: 8000,
                            discont: "40",
                            reviews: 135,
                            initialRating: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          child: PopularDeals(
                            hotelName: "Seagull Hotel",
                            locationName: "Cox bazaar",
                            mainPrice: 16000,
                            discontPrice: 8000,
                            discont: "40",
                            reviews: 135,
                            initialRating: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          child: PopularDeals(
                            hotelName: "Seagull Hotel",
                            locationName: "Cox bazaar",
                            mainPrice: 16000,
                            discontPrice: 8000,
                            discont: "40",
                            reviews: 135,
                            initialRating: 3,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                          ),
                          child: PopularDeals(
                            hotelName: "Seagull Hotel",
                            locationName: "Cox bazaar",
                            mainPrice: 16000,
                            discontPrice: 8000,
                            discont: "40",
                            reviews: 135,
                            initialRating: 3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 20,
              right: 20,
              top: 225,
              child: Column(
                children: [
                  Container(
                    height: 60,
                    width: screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                    "assets/images/icons/locationpin.png",
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Select Destination",
                                        hintStyle: GoogleFonts.roboto(
                                          fontWeight: FontWeight.w400,
                                          fontSize: screenHeight * 0.020,
                                        ),
                                        border: InputBorder.none,
                                      ),
                                    ),
                                  ),
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
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xff08BA64),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Image.asset(
                                "assets/images/icons/bookpin.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 60,
                    width: screenWidth,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "21 Nov -1 Dec",
                                    style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w400,
                                      fontSize: screenHeight * 0.020,
                                      color: Color(0xff9C9C9C),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                                child: Icon(
                              Icons.search,
                              color: Color(0xff9C9C9C),
                              size: screenHeight * 0.040,
                            )),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Image.asset(
                                "assets/images/icons/sliders.png",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.005,
                  ),
                  Divider(
                    thickness: 2,
                    color: Color(0xffD0D0D0),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
