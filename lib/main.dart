import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/Login/loginscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Instagram Clone" ,
    theme: ThemeData.dark(),
    home: Loginscreen(),
  ));
}
