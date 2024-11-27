import 'dart:async';

import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/Login/loginscreen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Loginscreen()));
      });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImages(imgurl: "instagram.png"),
            const SizedBox(height: 20,),
            UiHelper.customImages(imgurl: "logo.png"),
          ],
        ),
      ),
    );
  }
}
