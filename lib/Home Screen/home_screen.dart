import 'package:delivery_app_two/Custom/custom_indicator.dart';
import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              //==============Bar Section==================//
              Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/img_4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: const [
                      Text(
                        "Hi, Shawon",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text("Dhaka, Bangladesh"),
                    ],
                  ),
                  const Spacer(),
                  const Icon(color: Colors.black, FontAwesomeIcons.bell),
                ],
              ),
              const SizedBox(height: 18),
              //==============Trac Your Parcel Section==================//
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 120,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Track your Parcel",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              "Please enter your order id",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.10),
                              child: TextField(
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: "Order id",
                                  suffixIcon: const Icon(
                                    color: Colors.grey,
                                    FontAwesomeIcons.search,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 8,
                                    vertical: 5,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              //====================indicator section===============//
              Expanded(
                child: PageView(
                  controller: _controller,
                  children: const [
                    CustomIndicator(),
                    CustomIndicator(),
                    CustomIndicator(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              //==============Create a shipment============//
              GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.detailsPage);
                },
                child: Container(
                  height: 60,
                  width: 337,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: const [
                        Icon(color: Colors.amber, FontAwesomeIcons.gift),
                        SizedBox(width: 20),
                        Text(
                          "Create New Shipment",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //=============Recent=============//
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              //===============Robert Dowany Filed One============//
              Container(
                height: 86,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(color: Colors.amber, FontAwesomeIcons.box),
                      const SizedBox(width: 20),
                      Column(
                        children: const [
                          Text(
                            "Robert Downy",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Text(
                            "D.I Panjaitan Street, Purwokerto City",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text("10 November 2025 , 10:30 am"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 13),
              //===============Robert Dowany Filed Two============//
              Container(
                height: 86,
                width: 335,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(color: Colors.amber, FontAwesomeIcons.box),
                      const SizedBox(width: 20),
                      Column(
                        children: const [
                          Text(
                            "Robert Downy",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Text(
                            "D.I Panjaitan Street, Purwokerto City",
                            style: TextStyle(fontSize: 12),
                          ),
                          Text("10 November 2025 , 10:30 am"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      //=================Bottom Navigation Bar===================//
      bottomNavigationBar: SizedBox(
        height: 60, // fixed height
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Alerts",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ],
        ),
      ),
    );
  }
}
