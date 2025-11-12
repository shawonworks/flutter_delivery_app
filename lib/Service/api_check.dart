import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:get/get.dart';
import '../helper/shared_prefe/shared_prefe.dart' show SharePrefsHelper, SharedPrefsHelper;


class ApiChecker {
  static void checkApi(Response response, {bool getXSnackBar = false}) async {
    if (response.statusCode == 401) {
     //await SharedPrefsHelper.remove(AppConstants.bearerToken);
      Get.toNamed(AppRoute.singinPage);
    } else {
      //showCustomSnackBar(response.statusText!, getXSnackBar: getXSnackBar);
    }
  }
}