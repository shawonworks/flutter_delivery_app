
import 'package:delivery_app_two/Home%20Screen/details_page.dart';
import 'package:delivery_app_two/Home%20Screen/details_page_five.dart';
import 'package:delivery_app_two/Home%20Screen/details_page_four.dart';
import 'package:delivery_app_two/Home%20Screen/details_page_three.dart';
import 'package:delivery_app_two/Home%20Screen/details_page_two.dart';
import 'package:delivery_app_two/Home%20Screen/home_screen.dart';
import 'package:delivery_app_two/Onboarding%20Screen/splash_screen.dart';
import 'package:delivery_app_two/Onboarding%20Screen/welcome_page_three.dart';
import 'package:delivery_app_two/Onboarding%20Screen/welcome_page_two.dart';
import 'package:delivery_app_two/Othentication%20pages/creat_your_account.dart';
import 'package:delivery_app_two/Othentication%20pages/verify_otp_two.dart';

import 'package:get/get.dart';

import '../Othentication pages/forget_page.dart';
import '../Othentication pages/reset_password.dart';
import '../Othentication pages/singin_page.dart';
import '../Othentication pages/verify_otp.dart';
import '../Onboarding Screen/home_page.dart';

class AppRoute {
  //onboarding screen routes
  static const String splashScreen = "/splashScreen";
  static const String homePage = "/HomePage";
  static const String welcomePageOne = "/welcomePageOne";
  static const String welcomePageTwo = "/welcomePageTwo";
  static const String welcomePageThree = "/welcomePageThree";

  //authentication pages routes
  static const String singinPage = "/singinPage";
  static const String creatYourAccount = "/creatYourAccount";
  static const String forgetPage = "/forgetPage";
  static const String verifyOtp = "/verifyOtp";
  static const String verifyOtpTwo = "/verifyOtpTwo";
  static const String resetPassword = "/resetPassword";

  //Home pages routes
  static const String homeScreen = "/homeScreen";
  static const String detailsPage = "/detailsPage";
  static const String detailsPageTwo = "/detailsPageTwo";
  static const String detailsPageThree = "/detailsPageThree";
  static const String detailsPageFour = "/detailsPageFour";
  static const String detailsPageFive = "/detailsPageFive";







  static List<GetPage> routes = [
    //onboarding screen routes
    GetPage(name: splashScreen, page:() => SplashScreen()),
    GetPage(name: homePage, page:() => HomePage()),
    GetPage(name: welcomePageTwo, page:() => WelcomePageTwo()),
    GetPage(name: welcomePageThree, page:() => WelcomePageThree()),

    //authentication pages routes
    GetPage(name: singinPage, page:() => SinginPage()),
    GetPage(name: creatYourAccount, page:() => CreatYourAccount()),
    GetPage(name: forgetPage, page:() => ForgetPage()),
    GetPage(name: verifyOtp, page:() => VerifyOtp()),
    GetPage(name: verifyOtpTwo, page:() => VerifyOtpTwo()),
    GetPage(name: resetPassword, page:() => ResetPassword()),

    //Home pages routes
    GetPage(name: homeScreen, page:() => HomeScreen()),
    GetPage(name: detailsPage, page:() => DetailsPage()),
    GetPage(name: detailsPageTwo, page:() => DetailsPageTwo()),
    GetPage(name: detailsPageThree, page:() => DetailsPageThree()),
    GetPage(name: detailsPageFour, page:() => DetailsPageFour()),
    GetPage(name: detailsPageFive, page:() => DetailsPageFive()),







  ];
}