import 'package:cached_network_image/cached_network_image.dart';
import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:delivery_app_two/helper/shared_prefe/shared_prefe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  navigate() async {
    bool? isOnboarding = await SharedPrefsHelper.getBool(SharedPreferenceValue.isOnboarding);
    Future.delayed(const Duration(seconds: 3), (){
      if(isOnboarding == true){
        Get.toNamed(AppRoute.homeScreen);
      } else {
        Get.toNamed(AppRoute.homePage);
      }

    });
  }
  @override
  void initState() {
    navigate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 159, 37, 1),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 1),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: CachedNetworkImage(
              imageUrl:
                  "https://static.vecteezy.com/system/resources/thumbnails/005/520/843/small_2x/letter-i-logo-initial-with-circle-shape-swoosh-alphabet-logotype-simple-and-minimalist-vector.jpg",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
