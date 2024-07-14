import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class PlayerImage extends StatelessWidget {
  final int currentIndex;

  const PlayerImage({
    super.key,
    required this.currentIndex,
  });

  String getName() {
    if (currentIndex == 0) {
      return 'assets/images/lebron_james_card.png';
    } else if (currentIndex == 1) {
      return 'assets/images/michael_jordan_card.png';
    } else if (currentIndex == 2) {
      return 'assets/images/larry_bird_card.png';
    } else if (currentIndex == 3) {
      return 'assets/images/shaquille_o_neal_card.png';
    } else if (currentIndex == 4) {
      return 'assets/images/tim_duncun_card.png';
    } else {
      return 'assets/images/abdul_kareem_card.png';
    }
  }

  String getTeam() {
    if (teams[currentIndex] == 'Chicago Bulls') {
      return 'assets/icons/chicago_bulls_logo.png';
    } else if (teams[currentIndex] == 'Boston Celtics') {
      return 'assets/icons/boston_celtics_logo.png';
    } else if (teams[currentIndex] == 'San Antonio Spurs') {
      return 'assets/icons/san_antonio_spurs_logo.jpg';
    } else {
      return 'assets/icons/lakers.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          bottom: 0,
          height: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              getName(),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          height: 100,
          child: Image.asset(
            getTeam(),
          ),
        ),
        Positioned(
          top: 35,
          right: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                badge[currentIndex],
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                position[currentIndex],
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
