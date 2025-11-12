import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class WelcomePageOne extends StatefulWidget {
  const WelcomePageOne({super.key});

  @override
  State<WelcomePageOne> createState() => _WelcomePageOneState();
}

class _WelcomePageOneState extends State<WelcomePageOne> {
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
              child: Image.asset("assets/images/img_1.png",
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
                  "Welcome to Product Delivery,",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff139F25),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Your go-to solution for fast, reliable "
                      "parcel delivery. Whether you're sending or receiving, we "
                      "make it easy and quick.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}