import 'package:flutter/material.dart';

import 'custom_button.dart';

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

      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 119),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.28,
              child: Image.asset("assets/images/img_3.png",
                fit: BoxFit.contain,),
            ),
          ),
          const SizedBox(height: 35),

          Container(
            width: 335,
            height: 106,
            child: const Column(
              children: [
                Text(
                  "Ready to Deliver?",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff139F25),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Let’s get your parcels moving! With just a few taps, "
                      "your package is on its way. Speedy, secure, and hassle-free deliveries—every time.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),

          // const SizedBox(height: 60),
          //
          // CustomButton(text: "Sing Up"),
          //
          //
          // const SizedBox(height: 22),
          //
          // CustomButton(text: "Sing In", color: Colors.white,)

        ],
      ),
    );
  }
}