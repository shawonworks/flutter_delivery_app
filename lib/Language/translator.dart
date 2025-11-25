import 'package:delivery_app_two/Language/bangla.dart';
import 'package:delivery_app_two/Language/english.dart';
import 'package:get/get.dart';

class Language extends Translations {
  @override

  Map<String, Map<String,String>> get keys => {
    "en_us": english,
    "bn": bangla

  };
}