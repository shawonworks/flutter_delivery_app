import 'package:flutter/material.dart';

import '../Utils/StaticString/staic_string.dart';

class WelcomePageThree extends StatefulWidget {
  const WelcomePageThree({super.key});

  @override
  State<WelcomePageThree> createState() => _WelcomePageThreeState();
}

class _WelcomePageThreeState extends State<WelcomePageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 119),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.28,
              child: Image.asset(
                "assets/images/img_3.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 35),
          Container(
            width: 335,
            height: 106,
            child: Column(
              children: [
                Text(
                  AppString.welcomeThree,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff139F25),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppString.welcomeTextTitleThree,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
