import 'package:flutter/material.dart';
import '../models/character.dart';
import '../stylesGuide.dart';

class CharacterScreenDetail extends StatefulWidget {
  final Character character;

  CharacterScreenDetail({Key key, this.character}) : super(key: key);

  @override
  _CharacterScreenDetailState createState() => _CharacterScreenDetailState();
}

class _CharacterScreenDetailState extends State<CharacterScreenDetail> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Hero(
              tag: "background-${widget.character.name}",
              child: DecoratedBox(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: widget.character.colors,
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft)),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: IconButton(
                        icon: Icon(Icons.close),
                        iconSize: 48,
                        color: Colors.white.withOpacity(0.8),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Hero(
                        tag: "image-${widget.character.imagePath}",
                        child: Image.asset(widget.character.imagePath,height: screenHeight*0.45,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 32),
                    child: Text(widget.character.name,style: AppTheme.heading,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 32),
                    child: Text(widget.character.description,style: AppTheme.subheading,),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
