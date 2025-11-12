import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_button.dart';

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

      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 119),
            child: Container(
              child: Image.asset("assets/images/img_2.png"),
            ),
          ),
          const SizedBox(height: 35),

          Container(
            width: 335,
            height: 106,
            child: const Column(
              children: [
                Text(
                  "Fast Deliveries, Anytime",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff139F25),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Need a quick delivery? Simply book a ride, and we’ll take care of the rest. "
                      "Trust us to get your parcels to their destination, safely and on time.",
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
          // //sing up bottom
          // CustomButton(text: "Sing Up",
          // onTap: (){
          //   Get.toNamed(AppRoute.welcomePageThree);
          // },
          // ),
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