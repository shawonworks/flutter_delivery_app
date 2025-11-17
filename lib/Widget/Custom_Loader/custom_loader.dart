
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class CustomLoader extends StatelessWidget {
  const CustomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SpinKitCircle(
        color: Colors.white70,
        size: 60.0,
      ),
    );
  }
}