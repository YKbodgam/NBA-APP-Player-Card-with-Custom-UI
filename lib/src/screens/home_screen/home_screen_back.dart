import 'package:flutter/material.dart';

import '../../utils/colours.dart';

class Background extends StatelessWidget {
  final Widget child;
  final int currentIndex;

  const Background({
    super.key,
    required this.child,
    required this.currentIndex,
  });

  String getImage() {
    if (currentIndex == 0) {
      return 'assets/images/lebron_james_back.jpg';
    } else if (currentIndex == 1) {
      return 'assets/images/michael_jordan_back.jpg';
    } else if (currentIndex == 2) {
      return 'assets/images/larry_bird_back.jpg';
    } else if (currentIndex == 3) {
      return 'assets/images/shaquille_o_neal_back.jpg';
    } else if (currentIndex == 4) {
      return 'assets/images/tim_duncun_back.jpg';
    } else {
      return 'assets/images/abdul_kareem_back.jpg';
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: sized_box_for_whitespace
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Positioned.fill(
            child: Image.asset(
              getImage(),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kSecondaryDarkColor.withOpacity(0.7),
                    kPrimaryDarkColor.withOpacity(0.7)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
