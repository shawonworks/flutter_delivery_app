import 'package:delivery_app_two/Onboarding%20Screen/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '/Custom/route_page.dart';

class DetailsPageFive extends StatefulWidget {
  const DetailsPageFive({super.key});

  @override
  State<DetailsPageFive> createState() => _DetailsPageFiveState();
}

class _DetailsPageFiveState extends State<DetailsPageFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: Text("Rider",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              width: 338,
              height: 289,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset("assets/images/img_7.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: 20),
            Text("Rider is arriving in 10 min",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/img_9.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                //============Delivery Man Section ==================//
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Md. Shaggy",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text("4.9 ( 35 Trips)"),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.directions_bike,
                          color: Colors.green,
                          size: 16,
                        ),
                        SizedBox(width: 4),
                        Text(" Bike: Yamaha YZF-R1"),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            CustomButton(
              onTap: (){
                Get.toNamed(AppRoute.detailsPageThree);
              },
              text: "Call Rider",
              icon: Icons.call,
            ),
            const SizedBox(height: 30),
            CustomButton(
              text: "Cancel Request",
              color: Colors.white,
              onTap: (){
                Get.toNamed(AppRoute.detailsPageFour);
              },
            ),

          ],
        ),
      ),
    );
  }
}
