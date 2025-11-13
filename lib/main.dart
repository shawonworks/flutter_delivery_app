import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Custom/dependency_injection.dart';
import 'Custom/route_page.dart';

void main() {
  DependancyInjection di = DependancyInjection();
  di.dependencies();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});






  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      defaultTransition: Transition.fadeIn,
      transitionDuration: Duration(milliseconds: 200),
      initialRoute: AppRoute.splashScreen,
      navigatorKey: Get.key,
      getPages: AppRoute.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold();
  }
}