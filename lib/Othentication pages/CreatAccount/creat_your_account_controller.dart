// import 'dart:convert';
// import 'package:delivery_app_two/Othentication%20pages/verify_otp.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../../../../service/api_url.dart';
//
// class CreateYourAccountController extends GetxController {
//   // Text controllers
//   final nameController = TextEditingController();
//   final emailController = TextEditingController();
//   final phoneController = TextEditingController();
//   final passwordController = TextEditingController();
//   final confirmPasswordController = TextEditingController();
//
//   final agree = false.obs;
//   final _emailRegex = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
//
//   RxBool isLoading = false.obs;
//
//   @override
//   void onClose() {
//     nameController.dispose();
//     emailController.dispose();
//     phoneController.dispose();
//     passwordController.dispose();
//     confirmPasswordController.dispose();
//     super.onClose();
//   }
//
//   bool _isEmailValid(String email) => _emailRegex.hasMatch(email);
//
//   void toggleAgree(bool? v) => agree.value = v ?? false;
//
//   // Method to select role (used by UI for navigation clarity)
//   // Although not strictly necessary for this controller, keeping it for UI consistency
//   String selectedRole = "USER";
//
//   void selectRole(String role) {
//     selectedRole = role;
//     update();
//   }
//
//
//   /// Create User Account API Call
//   Future<void> createAccount() async {
//     final name = nameController.text.trim();
//     final email = emailController.text.trim();
//     final phone = phoneController.text.trim();
//     final pass = passwordController.text.trim();
//     final confirm = confirmPasswordController.text.trim();
//
//     /// Validation)) return _showError("Please enter a valid email address");
//     if (phone.isEmpty) return _showError("Please enter your phone number");
//     if (phone.length < 8)
//       return _showError("Please enter a valid phone number");
//     if (pass.isEmpty) return _showError("Please enter a password");
//     if (pass.length < 6)
//       return _showError("Password must be at least 6 characters");
//     if (confirm.isEmpty) return _showError("Please confirm your password");
//     if (pass != confirm) return _showError("Passwords do not match");
//     if (!agree.value)
//       return _showError("Please accept Terms and Privacy Policy");
//
//     if (name.isEmpty) return _showError("Please enter your full name");
//     if (email.isEmpty) return _showError("Please enter your email address");
//     if (!_isEmailValid(email
//         try {
//         isLoading.value = true;
//
//         final fullUrl = Uri.parse("${ApiConstant.baseUrl}${ApiConstant.signUp}");
//
//         final response = await http.post(
//         fullUrl,
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({
//         "name": name,
//         "role": "USER", // *** Key Fix: Role set to USER ***
//         "contact": phone,
//         "email": email,
//         "password": pass,
//         "countryCode": "+880",
//         }),
//         );
//
//         isLoading.value = false;
//
//         final responseBodyString = response.body;
//         print("Response status: ${response.statusCode}");
//         print("Response body: $responseBodyString");
//
//         final Map<String, dynamic> responseBody = jsonDecode(responseBodyString);
//
//
//         if (response.statusCode >= 200 && response.statusCode < 300) {
//         Get.snackbar("Success", "Account created successfully");
//         Get.offAll(() => VerifyOtp(email: email));
//         } else {
//         final errorMessage = responseBody['message'] ?? 'An unknown error occurred.';
//         _showError("Registration failed: $errorMessage");
//         }
//         } catch (e) {
//     isLoading.value = false;
//     _showError("Registration failed: $e");
//     }
//     }
//
//   void _showError(String message) {
//     Get.snackbar(
//       "Error",
//       message,
//       snackPosition: SnackPosition.BOTTOM,
//       backgroundColor: Colors.red.withOpacity(0.1),
//       colorText: Colors.black,
//     );
//   }
// }