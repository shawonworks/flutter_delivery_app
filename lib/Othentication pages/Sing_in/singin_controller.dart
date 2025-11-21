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
  bool isLoading = false;

  singIn(String url) async {
    isLoading = true;
    update();

    Map<String, String> body = {
      "email": "${singInEmailController.text}",
      "password": "${singInPAssController.text}",
    };

    var response = await ApiClient.postData(url, body);
    if (response.statusCode == 200 || response.statusCode == 201) {
      await SharePrefsHelper.setString(
        AppConstants.bearerToken,
        response.body["data"]["token"],
      );

      Get.snackbar("Success", "Login Successfully");
      Get.toNamed(AppRoute.homePage);
      isLoading = false;
      update();
    } else {
      Get.snackbar("Error", "Give the correct value");
      isLoading = false;
      update();
    }
  }

  @override
  void onClose() {
    singInEmailController.dispose();
    singInPAssController.dispose();
    super.onClose();
  }
}
