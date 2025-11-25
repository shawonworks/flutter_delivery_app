import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Custom/custom_button.dart';
import '../Utils/StaticString/staic_string.dart';

class DetailsPageFour extends StatefulWidget {
  const DetailsPageFour({super.key});

  @override
  State<DetailsPageFour> createState() => _DetailsPageFourState();
}

class _DetailsPageFourState extends State<DetailsPageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: Text(
          AppString.searchingRide,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 15),
        child: Column(
          children: [
            Container(
              width: 338,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset("assets/images/img_7.png", fit: BoxFit.cover),
            ),
            SizedBox(height: 15),
            SizedBox(
              width: 327,
              height: 20,
              child: Text(
                AppString.searchingRide,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              alignment: Alignment.topLeft,
              width: 337,
              height: 113,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.recipientInfo,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        AppString.profileImgName,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        AppString.profileImgNumber,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        "Kuhurushkul, Cox's Bazar",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              alignment: Alignment.topLeft,
              width: 337,
              height: 152,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.grey, width: 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.parcelDetails,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.padding,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        AppString.parcelType,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.currency_exchange,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        AppString.parcelAmount,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.my_location_outlined,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        AppString.parcelDistance,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(
                        Icons.currency_exchange_sharp,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        AppString.parcelDeliveryCharge,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            CustomButton(
              text: AppString.sendRequest,
              color: Colors.white,
              textColor: Colors.redAccent,
              borderColor: Colors.redAccent,
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              width: 132,
                              height: 132,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                "assets/images/doucoment_img.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            AppString.areYouSure,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            AppString.areYouSureText,
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          CustomButton(
                            text: AppString.yes,
                            color: Colors.redAccent,
                            borderColor: Colors.redAccent,
                            onTap: (){
                              Get.toNamed(AppRoute.homeScreen);
                            },
                          ),
                          SizedBox(height: 20),
                          CustomButton(
                            text: AppString.no,
                            color: Colors.white,
                            borderColor: Colors.grey,
                            textColor: Colors.green,
                            onTap: (){
                              Get.toNamed(AppRoute.detailsPageFive);
                            },
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}