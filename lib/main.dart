import 'package:flutter/material.dart';

import 'src/screens/onboard_screen/onboarding_screen.dart';
import 'src/utils/colours.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NBA Game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryLightColor),
        useMaterial3: true,
      ),
      home: const OnBoardingScreen(),
    );
  }
}
