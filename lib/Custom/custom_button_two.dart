import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_button_controller.dart';

class CustomButtonTwo extends StatefulWidget {
  const CustomButtonTwo({super.key});

  @override
  State<CustomButtonTwo> createState() => _CustomButtonTwoState();
}

class _CustomButtonTwoState extends State<CustomButtonTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: GetBuilder<ButtonController>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // ---------- First Button ----------
                GestureDetector(
                  onTap: () {
                    controller.isLoginTapped = true;
                    controller.update();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: 141,
                    decoration: BoxDecoration(
                      color: controller.isLoginTapped
                          ? Colors.green
                          : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: const Text(
                      "User",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),

                // ---------- Second Button ----------
                GestureDetector(
                  onTap: () {
                    controller.isLoginTapped = false;
                    controller.update();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 48,
                    width: 141,
                    decoration: BoxDecoration(
                      color: controller.isLoginTapped
                          ? Colors.white
                          : Colors.green,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: const Text(
                      "Rider",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
    );
  }
}
