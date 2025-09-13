import 'package:faceboook/screens/home/home.dart';
import 'package:faceboook/screens/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:homescreen.routename ,
      routes:{
        loginscreen.routename:(_) => loginscreen(),
        homescreen.routename:(_) => homescreen(),
      } ,
    );
  }
}
