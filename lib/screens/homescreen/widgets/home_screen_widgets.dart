import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularDeals extends StatelessWidget {
  const PopularDeals({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.200,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: Colors.red,
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/hotel.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Seagull Hotel",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff131B1A),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_pin,
                            size: screenWidth * 0.035,
                            color: Color(0xff9C9C9C),
                          ),
                          Text(
                            "Cox's Bazaar",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff9C9C9C),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffD0D0D0).withOpacity(0.40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Hotel",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff9C9C9C),
                                    fontSize: screenHeight * 0.015,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xffD0D0D0).withOpacity(0.40),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "Restaurant",
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff9C9C9C),
                                    fontSize: screenHeight * 0.015,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        child: RatingBar.builder(
                          initialRating: 5,
                          minRating: 1,
                          direction: Axis.horizontal,
                          // allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 20,

                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ),
                      Text(
                        "131 Reviews",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w300,
                          color: Color(0xff9C9C9C),
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 45,
                        width: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                "assets/images/badge.png",
                              ),
                              fit: BoxFit.fill),
                        ),
                        child: Center(
                          child: Text(
                            "50%",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: screenWidth * 0.03,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "available offer",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff9C9C9C),
                                ),
                              ),
                              Text(
                                "6000 tk",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff08BA64),
                                ),
                              ),
                              Text(
                                "12000 tk",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff08BA64),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
