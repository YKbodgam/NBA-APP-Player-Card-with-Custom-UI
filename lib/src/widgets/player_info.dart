import 'package:flutter/material.dart';

import '../utils/colours.dart';
import '../utils/constants.dart';

class PlayerInfo extends StatelessWidget {
  final int currentIndex;

  const PlayerInfo({
    super.key,
    required this.size,
    required this.currentIndex,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          constraints: const BoxConstraints(
            maxWidth: 40,
            maxHeight: 40,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: kSecondaryDarkColor,
              width: 1.0,
            ),
          ),
          child: Center(
            child: Text('${currentIndex + 1}'),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: size.height * 0.02,
            ),
            child: Container(
              width: 5.0, // Set the height of the line
              color: Colors.white, // Set the color of the line
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Text(
            players[currentIndex],
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
