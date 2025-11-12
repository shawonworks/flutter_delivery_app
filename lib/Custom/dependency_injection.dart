import 'package:delivery_app_two/Controller/singin_controller.dart';
import 'package:get/get.dart';

import 'custom_button_controller.dart';

class DependancyInjection extends Bindings{
  @override
  void dependencies() {

    Get.lazyPut(() => ButtonController(), fenix: true);
    Get.lazyPut(() => SingInController(), fenix: true);



  }

}