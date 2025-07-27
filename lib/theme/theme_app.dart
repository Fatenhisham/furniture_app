import 'package:flutter/material.dart';

class ThemeApp {
  static final lightTheme = ThemeData(
  primaryColor: Color(0xffFEDC61),
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black) ,
    headlineMedium: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black) ,
    headlineSmall: TextStyle(fontSize: 16,color: Colors.black) ,
  ),
   inputDecorationTheme: InputDecorationTheme(
    filled: true , 
    fillColor: Colors.white,
    prefixIconColor: Colors.yellow,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)) , 
    ),
   ),
  );
}
