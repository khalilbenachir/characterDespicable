import 'package:flutter/material.dart';
import 'pages/characters_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Describable Character',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        canvasColor: Colors.white,
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          elevation: 0,
          color: Colors.white
        )
      ),
      home: CharacterScreens(),
    );
  }
}
