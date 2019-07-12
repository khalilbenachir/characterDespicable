import 'package:flutter/material.dart';
import '../models/character.dart';
import '../stylesGuide.dart';

class CharacterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.bottomCenter,
          child: ClipPath(
            clipper: CharacterCardBackgroundClip(),
            child: Container(
              height: 0.6 * screenHeight,
              width: 0.9 * screenWidth,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: characters[0].colors,
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft)),
            ),
          ),
        ),
        Align(
          alignment: Alignment(0, -0.511),
          child: Image.asset(
            characters[0].imagePath,
            height: screenHeight * 0.55,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15,right: 90),
            child: RichText(text: TextSpan(children: [
              TextSpan(text: characters[0].name,style: AppTheme.heading),
              TextSpan(text: '\n',),
              TextSpan(text: "tap to read more",style: AppTheme.subheading),
            ])),
          ),
        )
      ],
    );
  }
}

class CharacterCardBackgroundClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curvedDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curvedDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curvedDistance, size.height);
    clippedPath.lineTo(size.width - curvedDistance, size.height);

    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curvedDistance);
    clippedPath.lineTo(size.width, curvedDistance);
    clippedPath.quadraticBezierTo(
        size.width - 1, 0, size.width - curvedDistance - 5, curvedDistance / 3);

    clippedPath.lineTo(curvedDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.3) + 10, 0, size.height * 0.4);

    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
