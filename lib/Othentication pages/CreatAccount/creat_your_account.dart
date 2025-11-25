import 'package:delivery_app_two/Custom/custom_button_two.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Onboarding Screen/custom_button.dart';
import '../../Custom/route_page.dart';
import '../../Utils/StaticString/staic_string.dart';

class CreatYourAccount extends StatefulWidget {
  const CreatYourAccount({super.key});

  @override
  State<CreatYourAccount> createState() => _CreatYourAccountState();
}

class _CreatYourAccountState extends State<CreatYourAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Center(
                child: Column(
                  children: [
                    Text(
                      AppString.createAccount,
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      AppString.createAccountTextTitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  "Select your role",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                ),
              ),

              SizedBox(height: 15),
              CustomButtonTwo(),
              SizedBox(height: 30),

              Text(
                AppString.fullName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: AppString.enterFullName,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Text(
                AppString.email,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: AppString.createEnterEmail,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Text(
                AppString.newPhone,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: AppString.enterPhone,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Text(
                AppString.createAccountPass,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: AppString.createAccountPassEnter,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),
              Text(
                AppString.createAccountConfirmPass,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: AppString.createAccountPassEnter,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: AppString.iAgree,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: " ${AppString.termsCondition} ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: " ${AppString.and} ",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(
                        text: AppString.privacyPolicy,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30),

              CustomButton(
                text: AppString.continueText,
                onTap: (){
                  Get.toNamed(AppRoute.verifyOtp);
                },
              ),

              SizedBox(height: 30),

              CustomButton(
                icon: FontAwesomeIcons.google,
                text: AppString.continueWithGoogle,
                color: Colors.white,
              ),

              SizedBox(height: 30),

              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    text: AppString.alreadyHaveAccount,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: AppString.singInText,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}