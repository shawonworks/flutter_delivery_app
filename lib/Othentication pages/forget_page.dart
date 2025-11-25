
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Onboarding Screen/custom_button.dart';
import '../Custom/route_page.dart';
import '../Utils/StaticString/staic_string.dart';

class ForgetPage extends StatefulWidget {
  const ForgetPage({super.key});

  @override
  State<ForgetPage> createState() => _ForgetPageState();
}

class _ForgetPageState extends State<ForgetPage> {
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
                    AppString.forgetPass,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppString.forgotPassTextTitle,
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

            // Phone Label
            Text(
              AppString.phone,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),

            // Phone Field
            Container(
              height: 50,
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: AppString.phoneNumber,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Confirm Button
            CustomButton(
              text: AppString.confirm,
              onTap: () {
                FocusScope.of(context).unfocus();
                Get.toNamed(AppRoute.verifyOtpTwo);
              },
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}