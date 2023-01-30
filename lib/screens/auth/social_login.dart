import 'package:dd_travel_app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../const/app_colors.dart';

class SocialLoginScreen extends StatelessWidget {
  const SocialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade800,
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
                          "Sign in to DD",
                          style: GoogleFonts.roboto(
                            color: AppColors.whiteColor,
                            fontSize: screenWidth * 0.06,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.05,
                        ),
                        ddButton("Sign in With Gmail",
                            "assets/images/gmailicon.png", context),
                        ddButton("Sign in With Facebook",
                            "assets/images/fbicon.png", context),
                        ddButton("Sign in With Gmail",
                            "assets/images/gmailicon.png", context),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(loginScreen);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 90),
                            width: screenWidth,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white.withOpacity(0.75),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Center(
                                child: Text(
                                  "Continue with Email",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white.withOpacity(0.75),
                                    fontSize: screenWidth * 0.04,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.010,
                        ),
                        Text(
                          "Skip for Now",
                          style: GoogleFonts.roboto(
                            color: Colors.white.withOpacity(0.50),
                            fontSize: screenWidth * 0.04,
                            fontWeight: FontWeight.w400,
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

  Widget ddButton(String buttonName, String buttonimage, context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      width: screenWidth,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey.withOpacity(0.4),
      ),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                buttonimage,
                height: 50,
                width: 50,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.030,
          ),
          Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.05,
            ),
          ),
        ],
      ),
    );
  }
}
