import 'package:delivery_app_two/Custom/custom_button.dart';
import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPageThree extends StatefulWidget {
  const DetailsPageThree({super.key});

  @override
  State<DetailsPageThree> createState() => _DetailsPageThreeState();
}

class _DetailsPageThreeState extends State<DetailsPageThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        centerTitle: true,
        title: Text("Summery",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,top: 15,right: 15,bottom: 15),
        child: Column(
          children: [
            Container(
              width: 338,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset("assets/images/img_7.png",fit: BoxFit.cover,),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 10),
              alignment: Alignment.topLeft,
              width: 337,
              height: 113,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                border: Border.all(color: Colors.grey, width: 1)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recipient Information",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black
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
                        "Emma Hardy",
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
                        "(555) 123-4567",
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
                  border: Border.all(color: Colors.grey, width: 1)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Parcel Details",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black
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
                        "Parcel Type: Gift",
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
                        "Parcel Value :  100",
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
                        "Distance: 5 KM",
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
                        "Delivery Charge: 10",
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
            CustomButton(text: "Send Request",
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
