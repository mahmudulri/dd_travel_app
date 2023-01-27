import 'package:dd_travel_app/screens/getstarted_screen.dart';
import 'package:dd_travel_app/screens/homescreen/home_screen.dart';
import 'package:dd_travel_app/screens/social_login.dart';
import 'package:get/get.dart';

import '../screens/login_screen.dart';
import '../screens/profilescreen/profile_screen.dart';
import '../screens/splash_screen.dart';

const String splashScreen = '/splash-screen';
const String getStartedScreen = '/getStarted-screen';
const String socialLoginScreen = '/social-login-screen';
const String loginScreen = '/login-screen';
const String profileScreen = '/profile-screen';
const String homeScreen = '/home-screen';

List<GetPage> getPages = [
  GetPage(
    name: splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: getStartedScreen,
    page: () => GetStartedScreen(),
  ),
  GetPage(
    name: socialLoginScreen,
    page: () => SocialLoginScreen(),
  ),
  GetPage(
    name: loginScreen,
    page: () => LogInScreen(),
  ),
  GetPage(
    name: profileScreen,
    page: () => ProfileScreen(),
  ),
  GetPage(
    name: homeScreen,
    page: () => HomeScreen(),
  ),
];
