import 'package:dd_travel_app/routes/route.dart';
import 'package:dd_travel_app/screens/auth/social_login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/app_colors.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      // backgroundColor: Colors.grey.shade800,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        SizedBox(
                          height: screenHeight * 0.10,
                        ),
                        Image.asset(
                          "assets/images/logo.png",
                          height: 100,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      // color: Colors.purple,
                      children: [
                        Text(
                          "Welcome to the",
                          style: GoogleFonts.roboto(
                            color: AppColors.whiteColor,
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "World of Discount",
                          style: GoogleFonts.roboto(
                            color: AppColors.whiteColor,
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.040,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 50),
                          width: screenWidth,
                          child: Text(
                            "Make your travel simple. Get awesome deals and save more than 60% of travel cost! Enjoy your Traveling!",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: AppColors.whiteColor,
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.040,
                        ),
                        Divider(
                          indent: 130,
                          endIndent: 130,
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          height: screenHeight * 0.080,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(socialLoginScreen);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            width: screenWidth,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColors.getStartedButtonColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Get Started Now",
                                    style: GoogleFonts.roboto(
                                      color: AppColors.whiteColor,
                                      fontSize: screenWidth * 0.04,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.05,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
