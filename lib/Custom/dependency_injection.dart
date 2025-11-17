import 'package:delivery_app_two/Othentication%20pages/Sing_in/singin_controller.dart';
import 'package:get/get.dart';

import 'custom_button_controller.dart';

class DependancyInjection extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => ButtonController(), fenix: true);
    Get.lazyPut(() => SingInController(), fenix: true);



  }

}