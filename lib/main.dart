import 'package:emerald_projects/views/auth/splash.dart';
import 'package:emerald_projects/views/widget/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: AppColors.orange,
        ),
        home: const SplashScreen());
  }
}
