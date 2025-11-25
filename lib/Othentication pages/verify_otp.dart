import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../Onboarding Screen/custom_button.dart';
import '../Custom/route_page.dart';
import '../Utils/StaticString/staic_string.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
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
            Center(
              child: Column(
                children: [
                  Text(
                    AppString.verifyOtp,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppString.verifyOtpTitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
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
            SizedBox(height: 25),
            Center(
              child: Text(
                AppString.verifyOtpBottomTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey[600],
                ),
              ),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                AppString.resendCode,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),

            SizedBox(height: 35),
            CustomButton(
              text: AppString.verify,
              onTap: () {
                FocusScope.of(context).unfocus();
                Get.toNamed(AppRoute.homeScreen);
              },
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}