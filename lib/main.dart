import 'package:flutter/material.dart';
import 'ui/home.dart';
import 'config/colors.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
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
