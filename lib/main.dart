import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'config/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elblasy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        secondaryHeaderColor: AppColors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}
