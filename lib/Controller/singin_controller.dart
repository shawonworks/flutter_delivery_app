import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:delivery_app_two/Service/api_check.dart';
import 'package:delivery_app_two/Service/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SingInController extends GetxController {
  TextEditingController singInEmailController = TextEditingController();
  TextEditingController singInPAssController = TextEditingController();

  singIn(String url) async {
    Map<String, String> body = {
      "email": singInEmailController.text,
      "password": singInPAssController.text,
    };

    var response = await ApiClient.postData(url, body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      Get.toNamed(AppRoute.homeScreen);
    } else {
      ApiChecker();
    }
  }
}
