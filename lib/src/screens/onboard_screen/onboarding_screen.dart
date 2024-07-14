import 'package:flutter/material.dart';

import '../../utils/colours.dart';
import '../../components/round_button.dart';
import '../home_screen/home_screen_main.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLightColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: RoundedButton(
              text: "Continue",
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
