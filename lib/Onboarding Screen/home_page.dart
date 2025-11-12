import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:delivery_app_two/Onboarding%20Screen/welcome_page_one.dart';
import 'package:delivery_app_two/Onboarding%20Screen/welcome_page_three.dart';
import 'package:delivery_app_two/Onboarding%20Screen/welcome_page_two.dart';
import 'package:delivery_app_two/helper/shared_prefe/shared_prefe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // PageView section
          Expanded(
            child: PageView(
              controller: _controller,
              children: const [
                WelcomePageOne(),
                WelcomePageTwo(),
                WelcomePageThree(),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // SmoothPageIndicator (just above buttons)
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.deepPurple,
              dotColor: Colors.grey,
              dotHeight: 10,
              dotWidth: 10,
              spacing: 8,
              expansionFactor: 3,
            ),
          ),

          const SizedBox(height: 25),

          // Custom Buttons
          CustomButton(
            text: "Sign Up",
            color: Colors.green,
            onTap: () {
              SharedPrefsHelper.setBool(
                SharedPreferenceValue.isOnboarding,
                true,
              );
              Get.toNamed(AppRoute.creatYourAccount);
            },
          ),

          const SizedBox(height: 15),

          CustomButton(
            text: "Sign In",
            color: Colors.white,
            onTap: () {
              SharedPrefsHelper.setBool(
                SharedPreferenceValue.isOnboarding,
                true,
              );
              Get.toNamed(AppRoute.singinPage);
            },
          ),

          const SizedBox(height: 80),
        ],
      ),
    );
  }
}
