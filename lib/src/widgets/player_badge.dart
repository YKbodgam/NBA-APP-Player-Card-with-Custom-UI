import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerBadge extends StatelessWidget {
  final int currentIndex;

  const PlayerBadge({
    super.key,
    required this.size,
    required this.currentIndex,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.red, // Set the color of the line
                spreadRadius: 1,
                blurRadius: 2,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'TOP ${currentIndex + 1}',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Current Place',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
