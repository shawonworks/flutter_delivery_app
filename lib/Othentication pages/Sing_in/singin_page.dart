import 'package:delivery_app_two/Othentication%20pages/Sing_in/singin_controller.dart';
import 'package:delivery_app_two/Service/api_url.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../Onboarding Screen/custom_button.dart';
import '../../Custom/route_page.dart';
import '../../Utils/StaticString/staic_string.dart';

class SinginPage extends StatefulWidget {
  const SinginPage({super.key});

  @override
  State<SinginPage> createState() => _SinginPageState();
}

class _SinginPageState extends State<SinginPage> {
  late final SingInController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(SingInController());
  }
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: GetBuilder<SingInController>(
          builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 120),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Center(
                      child: Column(
                        children: [
                          Text(
                            AppString.welComeBack,
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            AppString.welComeBackTitle,
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
                      AppString.emailOrPhone,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),

                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: controller.singInEmailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: AppString.enterEmail,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 25),

                    Text(
                      AppString.password,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),

                    SizedBox(
                      height: 50,
                      child: TextField(
                        controller: controller.singInPAssController,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: AppString.enterPass,
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 5),

                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
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

                    SizedBox(height: 30),

                    CustomButton(
                      text: AppString.singIn,
                      onTap: (){
                        controller.singIn(ApiConstant.signIn);
                        Get.toNamed(AppRoute.homeScreen);
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
                      child: GestureDetector(
                        child: RichText(
                          text: TextSpan(
                            text: AppString.dontAccount,
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
                                    AppString.createAccount,
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