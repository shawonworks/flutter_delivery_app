import 'package:delivery_app_two/Custom/custom_button.dart';
import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: Text("Choose Location",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black
        ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,top: 30,right: 15,bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //======================= Pick Up Section======================//
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Pick up location",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Text(
                  "Gulashan Housing No.21, Dhaka",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            //======================= Destination Section ==================//
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "Destination",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Text(
                  "Khurushkul, Cox's Bazar City",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            //======================= Map Section ===========================//
            const SizedBox(height: 30,),
            Container(
              width: 338,
              height: 289,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset("assets/images/img_7.png",fit: BoxFit.cover,),
            ),
            const SizedBox(height: 40,),
            CustomButton(text: "Confirm Location",
            onTap: (){
              Get.toNamed(AppRoute.detailsPageTwo);
             },
            )
          ],
        ),
      ),
    );
  }
}
