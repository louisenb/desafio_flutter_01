import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'heros_list_screen.dart';

class HeroDetailsScreen extends StatelessWidget {
  final String image;
  final String name;
  final String description;

  HeroDetailsScreen(
      {Key? key,
      required this.image,
      required this.name,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  width: double.infinity,
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
              ),
              Positioned(
                  bottom: 20,
                  child: Text(
                    description,
                    style:
                        TextStyle(fontSize: 20, color: Colors.yellow, shadows: [
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
                  )),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(40),
                padding: const EdgeInsets.all(20.0),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HerosListScreen()),
                    ModalRoute.withName("/HerosListScreen"));
              },
              child: Text('Tentar de Novo',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
