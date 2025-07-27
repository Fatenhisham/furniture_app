import 'package:flutter/material.dart';
import 'package:furniture_app/screens/home_page.dart';
import 'package:furniture_app/theme/theme_app.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp
  extends StatelessWidget {
  const MyApp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture Store',
      theme: ThemeApp.lightTheme,
      home: HomePage() ,

    );
  }
}