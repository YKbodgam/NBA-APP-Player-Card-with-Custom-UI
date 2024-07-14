import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:project_2/src/utils/colours.dart';

import '../../utils/constants.dart';
import 'home_screen_back.dart';
import '../../widgets/player_badge.dart';
import '../../widgets/player_stats.dart';
import '../../widgets/player_card.dart';
import '../../widgets/player_info.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      currentIndex: _currentIndex,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: size.height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
            ),
            child: PlayerBadge(
              size: size,
              currentIndex: _currentIndex,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.04,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  players[_currentIndex],
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Team - ${teams[_currentIndex]}',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          PlayerStats(
            size: size,
            currentIndex: _currentIndex,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < players.length; i++)
                Container(
                  height: 4.0,
                  width: 30.0,
                  margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
                  decoration: BoxDecoration(
                    color: _currentIndex == i
                        ? kSecondaryLightColor
                        : Colors.white,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                ),
            ],
          ),
          CarouselSlider(
            items: players.map((meal) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                      vertical: size.height * 0.03,
                    ),
                    child: Row(
                      children: [
                        PlayerInfo(
                          size: size,
                          currentIndex: _currentIndex,
                        ),
                        Expanded(
                          child: PlayerCard(
                            size: size,
                            currentIndex: _currentIndex,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 500,
              initialPage: _currentIndex,
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
