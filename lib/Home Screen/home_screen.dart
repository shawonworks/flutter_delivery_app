import 'dart:io';
import 'package:delivery_app_two/Custom/custom_indicator.dart';
import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../Utils/StaticString/staic_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final PageController _controller = PageController();
  File? profileImage;

  Future<void> pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        profileImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: pickImage,
                    child: Container(
                      height: 48,
                      width: 48,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ClipOval(
                        child: profileImage != null
                            ? Image.file(profileImage!, fit: BoxFit.cover)
                            : Image.asset(
                                "assets/images/img_4.png",
                                fit: BoxFit.cover,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.profileName,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        AppString.profileLocation,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(color: Colors.black, FontAwesomeIcons.bell),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(AppRoute.chooseLanguage);
                    },
                    child: Icon(color: Colors.black, Icons.language),
                  ),
                ],
              ),
              const SizedBox(height: 18),
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
                            Text(
                              AppString.trackParcel,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              AppString.enterOrder,
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
                                  hintText: AppString.enterOrderId,
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
                      children: [
                        const Icon(color: Colors.amber, FontAwesomeIcons.gift),
                        SizedBox(width: 20),
                        Text(
                          AppString.createShipment,
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  AppString.recent,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.rebertDowny,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Text(AppString.city, style: TextStyle(fontSize: 12)),
                          Text(AppString.time, style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 13),
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.rebertDowny,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                          Text(AppString.city, style: TextStyle(fontSize: 12)),
                          Text(AppString.time, style: TextStyle(fontSize: 12)),
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
      bottomNavigationBar: SizedBox(
        height: 60,
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
