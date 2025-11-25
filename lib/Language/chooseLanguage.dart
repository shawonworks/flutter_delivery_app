import 'package:delivery_app_two/Custom/route_page.dart';
import 'package:delivery_app_two/helper/shared_prefe/shared_prefe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChooseLanguage extends StatefulWidget {
  const ChooseLanguage({super.key});

  @override
  State<ChooseLanguage> createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {

  List<String> languageList = ["English", "Bangle"];
  List<String> languageImageList = ["ban.png", "usa.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Language"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ListTile(
              onTap: () async {
                await SharePrefsHelper.setString(SharedPreferenceValue.language, "en");
                Get.updateLocale(const Locale("en", "US"));
                Get.toNamed(AppRoute.homeScreen);
              },
              selectedTileColor: Colors.grey,
              leading: Image.asset("assets/images/usa.png"),
              title: Text(languageList[0]),
            ),
            SizedBox(height: 20,),
            ListTile(
              onTap: () async {
                await SharePrefsHelper.setString(SharedPreferenceValue.language, "bn");
                Get.updateLocale(const Locale("bn", "BAN"));
                Get.toNamed(AppRoute.homeScreen);
              },
              selectedTileColor: Colors.grey,
              leading: Image.asset("assets/images/ban.png"),
              title: Text(languageList[1]),
            ),
          ],
        ),
      )
    );
  }
}
