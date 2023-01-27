import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../const/app_colors.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          CircleAvatar(
            radius: 120,
            child: CircleAvatar(
              radius: 115,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
          ),
        ],
      )),
    );
  }
}
