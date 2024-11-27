import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SplashScreen(),
    ),
  );
}

class SplashScreen extends StatelessWidget {
   const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column
      (children: 
      main MainAxisAlignment.center
      [
        Center(child: Image.asset('assets/logo/instagram.png'),),
      ]),
    );
  }
}
