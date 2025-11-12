import 'package:delivery_app_two/Controller/singin_controller.dart';
import 'package:delivery_app_two/Service/api_url.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../Onboarding Screen/custom_button.dart';
import '../Custom/route_page.dart';

class SinginPage extends StatefulWidget {
  const SinginPage({super.key});

  @override
  State<SinginPage> createState() => _SinginPageState();
}

class _SinginPageState extends State<SinginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: GetBuilder<SingInController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 120),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Welcome Text
                  Center(
                    child: Column(
                      children: [
                        Text(
                          "Welcome Back",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Log in to continue shopping and enjoy personalized offers",
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

                  // Email Label
                  Text(
                    "Email or Phone Number",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Email Field
                  SizedBox(
                    height: 50,
                    child: TextField(
                      controller: controller.singInEmailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(height: 25),

                  // Password Label
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),

                  // Password Field
                  SizedBox(
                    height: 50,
                    child: TextField(
                      controller: controller.singInPAssController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Password",
                        contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 5,),

                  Align(
                    alignment: Alignment.centerRight,
                    child:
                    GestureDetector(
                      onTap: (){
                        Get.toNamed(AppRoute.forgetPage);
                      },
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color.fromRGBO(19, 159, 37, 1),
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  CustomButton(text: "Sing In",
                  onTap: (){
                    controller.singIn(ApiConstant.signIn);
                    Get.toNamed(AppRoute.homeScreen);
                  },),

                  const SizedBox(height: 30),

                  CustomButton(
                    icon: FontAwesomeIcons.google,
                    text: "Continue with Google",
                    color: Colors.white,),

                  SizedBox(height: 30,),

                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      child: RichText(
                        text: TextSpan(
                          text: "Don’t have an account? ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                          children: [
                            WidgetSpan(
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoute.creatYourAccount);
                                },
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}