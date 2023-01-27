import 'package:dd_travel_app/routes/route.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../const/app_colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String type = "";
  String category = "";
  bool val1 = true;

  onChangeFunction(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    var _switchValue;
    var isToggled;
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
                    Text(
                      "Almost There !",
                      style: GoogleFonts.roboto(
                        color: AppColors.whiteColor,
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.07,
                    ),
                    CircleAvatar(
                      backgroundColor: Color(0xffF7F7F7),
                      radius: 55,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.png"),
                        radius: 50,
                        child: Stack(children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.camera_alt_outlined,
                                color: Color(0xffD0D0D0),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.06,
                    ),
                    nameField(context, "Full Name"),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    phoneField(context, "Phone"),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    dobField(
                      context,
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    genderCityField(context),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "What do you prefer ?",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: screenWidth * 0.035,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Wrap(
                            children: [
                              categorySelect(
                                "Mountains",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect(
                                "River",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect(
                                "Desert",
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              categorySelect(
                                "Sea",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30),
                        child: customSwitch(
                            "Enable location for better experience",
                            val1,
                            onChangeFunction)),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(homeScreen);
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
                          "Skip for now",
                          style: GoogleFonts.roboto(
                            color: Colors.grey,
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

  Widget nameField(context, hintTxt) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7).withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: hintTxt,
            hintStyle: GoogleFonts.roboto(
              color: Color(0xffD0D0D0).withOpacity(0.7),
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget phoneField(context, hintTxt) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 45,
      margin: EdgeInsets.symmetric(horizontal: 30),
      width: screenWidth,
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7).withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              // color: Colors.grey,
              child: Center(
                child: Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Text(
                        "+880",
                        style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: screenWidth * 0.035,
                          color: Colors.white,
                        ),
                      ),
                      VerticalDivider(
                        indent: 8,
                        endIndent: 8,
                        thickness: 2,
                        color: Color(0xffD0D0D0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: hintTxt,
                hintStyle: GoogleFonts.roboto(
                  color: Color(0xffD0D0D0).withOpacity(0.7),
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.w400,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget dobField(
    context,
  ) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30),
      decoration: BoxDecoration(
        color: Color(0xffF7F7F7).withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Birthday",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: screenWidth * 0.035,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 2,
            color: Colors.red,
          ),
          Expanded(
            flex: 3,
            child: Container(
              margin: EdgeInsets.only(left: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "day",
                  hintStyle: GoogleFonts.roboto(
                    color: Color(0xffD0D0D0).withOpacity(0.7),
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 2,
            color: Colors.red,
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "month",
                  hintStyle: GoogleFonts.roboto(
                    color: Color(0xffD0D0D0).withOpacity(0.7),
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          VerticalDivider(
            indent: 8,
            endIndent: 8,
            thickness: 1,
            color: Color(0xffD0D0D0),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "year",
                  hintStyle: GoogleFonts.roboto(
                    color: Color(0xffD0D0D0).withOpacity(0.7),
                    fontSize: screenWidth * 0.035,
                    fontWeight: FontWeight.w400,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget genderCityField(context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        width: screenWidth,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Gender",
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xffD0D0D0).withOpacity(0.7),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Color(0xffF7F7F7).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "City",
                    hintStyle: GoogleFonts.roboto(
                      color: Color(0xffD0D0D0).withOpacity(0.7),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.w400,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget categorySelect(
    String label,
  ) {
    return InkWell(
      onTap: () {
        setState(() {
          category = label;
        });
      },
      child: Chip(
        backgroundColor: category == label
            ? Colors.white
            : Colors.transparent.withOpacity(0.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        label: Text(
          label,
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w400,
            color: category == label ? Color(0xff08BA64) : Colors.white,
          ),
        ),

        // labelPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
      ),
    );
  }

  Widget customSwitch(String text, bool val, Function onChangedmethod) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: screenWidth * 0.035,
              color: Colors.white,
            ),
          ),
          Spacer(),
          CupertinoSwitch(
              trackColor: Colors.grey,
              activeColor: Color(0xff08BA64),
              value: val,
              onChanged: (newValue) {
                onChangedmethod(newValue);
              })
        ],
      ),
    );
  }
}
