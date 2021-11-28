import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeroThumbnail extends StatelessWidget {
  final String assetImage;
  final String number;

  HeroThumbnail({Key? key, required this.assetImage, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(assetImage),
              ),
            ),
          ),
          Positioned(
              right: 10,
              bottom: 10,
              child: Text(
                number,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.yellow,
                    shadows: [
                      Shadow(
                        // bottomLeft
                          offset: Offset(-1.5, -1.5),
                          color: Colors.black),
                      Shadow(
                        // bottomRight
                          offset: Offset(1.5, -1.5),
                          color: Colors.black),
                      Shadow(
                        // topRight
                          offset: Offset(1.5, 1.5),
                          color: Colors.black),
                      Shadow(
                        // topLeft
                          offset: Offset(-1.5, 1.5),
                          color: Colors.black),
                    ]),
              )
          ),
        ]
      )
    );
  }
}