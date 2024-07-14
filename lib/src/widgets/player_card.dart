import 'package:flutter/material.dart';

import 'player_img.dart';

class PlayerCard extends StatelessWidget {
  final int currentIndex;

  const PlayerCard({
    super.key,
    required this.size,
    required this.currentIndex,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.04,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              spreadRadius: 0,
              blurRadius: 16,
              offset: const Offset(4, 8),
            ),
          ],
        ),
        child: PlayerImage(
          currentIndex: currentIndex,
        ),
      ),
    );
  }
}
