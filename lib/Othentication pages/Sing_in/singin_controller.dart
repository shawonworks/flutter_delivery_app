import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:delivery_app_two/Service/api_check.dart';
import 'package:delivery_app_two/Service/api_client.dart';
import 'package:delivery_app_two/Utils/AppConst/app_const.dart';
import 'package:delivery_app_two/helper/shared_prefe/shared_prefe.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SingInController extends GetxController {
  TextEditingController singInEmailController = TextEditingController();
  TextEditingController singInPAssController = TextEditingController();

  singIn(String url) async {
    Map<String, String> body = {
      "email": "${singInEmailController.text}",
      "password": "${singInPAssController.text}",
    };

    var response = await ApiClient.postData(url, body);
    if (response.statusCode == 200 || response.statusCode == 201) {

      await SharePrefsHelper.setString(AppConstants.bearerToken, response.body["data"]["token"]);

          Get.snackbar("Success", "Login Successfully");
          Get.toNamed(AppRoute.homePage);
    } else {
      ApiChecker();
    }
  }
}
