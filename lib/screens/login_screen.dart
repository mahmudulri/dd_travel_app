import 'package:dd_travel_app/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/app_colors.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background2.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            child: Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
              ),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(
                      height: screenHeight * 0.350,
                    ),
                    Text(
                      "Email Sign in",
                      style: GoogleFonts.roboto(
                        color: AppColors.whiteColor,
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    emailField(context, "Your email address"),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    passlField(context, "A secure password"),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(() => HomeScreen());
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 120),
                        width: screenWidth,
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColors.getStartedButtonColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Text(
                            "Continue",
                            style: GoogleFonts.roboto(
                              color: AppColors.whiteColor,
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "forgot password",
                          style: GoogleFonts.roboto(
                            color: AppColors.getStartedButtonColor,
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }

  Widget emailField(context, hintTxt) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7).withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintTxt,
            hintStyle: GoogleFonts.roboto(
              color: Color(0xffD0D0D0).withOpacity(0.7),
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget passlField(context, hintTxt) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60),
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7).withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(
              Icons.visibility_off,
              color: AppColors.visibilityIconColor.withOpacity(0.40),
            ),
            hintText: hintTxt,
            hintStyle: GoogleFonts.roboto(
              color: Color(0xffD0D0D0).withOpacity(0.7),
              fontSize: screenWidth * 0.04,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
