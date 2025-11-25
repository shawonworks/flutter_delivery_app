import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Onboarding Screen/custom_button.dart';
import '../Custom/route_page.dart';
import '../Utils/StaticString/staic_string.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                    AppString.resetPass,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    AppString.resetPassTitle,
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

            Text(
              AppString.createAccountPass,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: AppString.createPass,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),

            Text(
              AppString.confirmNewPass,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 8),
            Container(
              height: 50,
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: AppString.reEnterPass,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            CustomButton(
              text: AppString.saveChanges,
              onTap: () async {
                FocusScope.of(context).unfocus();

                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    Future.delayed(Duration(seconds: 30), () {
                      Navigator.of(context).pop();
                      Get.toNamed(AppRoute.verifyOtp);
                    });
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.check_circle,
                                color: Colors.green, size: 60),
                            SizedBox(height: 15),
                            Text(
                              "Password Changed!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              AppString.passChange,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(height: 10),
                            CustomButton(
                              text: AppString.login,
                              onTap: (){
                                Get.toNamed(AppRoute.singinPage);
                              },
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}