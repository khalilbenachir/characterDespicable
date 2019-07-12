import 'package:flutter/material.dart';

import '../stylesGuide.dart';
import '../widget/character_widget.dart';

class CharacterScreens extends StatefulWidget {
  @override
  _CharacterScreensState createState() => _CharacterScreensState();
}

class _CharacterScreensState extends State<CharacterScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 32.0, top: 10),
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(text: "Despicable me", style: AppTheme.display1),
                    TextSpan(text: "/n"),
                    TextSpan(text: "Characters", style: AppTheme.display2),
                  ])),
                ),
              ),
            ),
            Expanded(
                child: CharacterWidget())
          ],
        ),
      ),
    );
  }
}
