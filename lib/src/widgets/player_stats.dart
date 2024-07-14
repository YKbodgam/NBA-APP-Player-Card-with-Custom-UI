import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_2/src/utils/constants.dart';

import '../utils/colours.dart';

class PlayerStats extends StatelessWidget {
  final int currentIndex;

  const PlayerStats({
    super.key,
    required this.size,
    required this.currentIndex,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
        vertical: size.height * 0.01,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
        vertical: size.height * 0.01,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: kSecondaryDarkColor,
          width: 2,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'PPG',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                ppg[currentIndex].toString(),
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 1.2,
            color: kSecondaryDarkColor, // Set the color of the line
          ),
          Column(
            children: [
              Text(
                'RPG',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                rpg[currentIndex].toString(),
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 50,
            width: 1.2,
            color: kSecondaryDarkColor, // Set the color of the line
          ),
          Column(
            children: [
              Text(
                'APG',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                apg[currentIndex].toString(),
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
