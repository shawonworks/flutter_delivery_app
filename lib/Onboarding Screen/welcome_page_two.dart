import 'package:flutter/material.dart';
import '../Utils/StaticString/staic_string.dart';

class WelcomePageTwo extends StatefulWidget {
  const WelcomePageTwo({super.key});

  @override
  State<WelcomePageTwo> createState() => _WelcomePageTwoState();
}

class _WelcomePageTwoState extends State<WelcomePageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 119),
            child: Container(child: Image.asset("assets/images/img_2.png")),
          ),
          const SizedBox(height: 35),
          Container(
            width: 335,
            height: 106,
            child: Column(
              children: [
                Text(
                  AppString.welcomeTwo,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff139F25),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  AppString.welcomeTextTitleTwo,
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
