import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../Custom/custom_button.dart';
import '../Custom/route_page.dart';

class VerifyOtpTwo extends StatefulWidget {
  const VerifyOtpTwo({super.key});

  @override
  State<VerifyOtpTwo> createState() => _VerifyOtpTwoState();
}

class _VerifyOtpTwoState extends State<VerifyOtpTwo> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
          24,
          120,
          24,
          MediaQuery.of(context).viewInsets.bottom + 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Welcome Text
            Center(
              child: Column(
                children: [
                  Text(
                    "Verify OTP",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Enter your OTP which has been sent to your phone and completely verify your account.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
            Center(
              child: Pinput(
                controller: otpController,
                length: 4,
                defaultPinTheme: PinTheme(
                  width: 65,
                  height: 70,
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 50,
                  height: 56,
                  textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.teal, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                separatorBuilder: (index) => SizedBox(width: 16),
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                "A code has been sent to your phone number",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                "Resend in 00:57",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),


            SizedBox(height: 35,),
            // Confirm Button
            CustomButton(
              text: "Verify",
              onTap: () {
                FocusScope.of(context).unfocus();
                Get.toNamed(AppRoute.resetPassword);
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
