import 'package:desafio01/modules/heros/models/HeroItem.dart';
import 'package:desafio01/modules/heros/screens/hero_details_screen.dart';
import 'package:desafio01/modules/heros/components/hero_thumbnail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HerosListScreen extends StatelessWidget {
  HerosListScreen({Key? key}) : super(key: key);

  final List<HeroItem> _items = [
    HeroItem(
        "assets/images/1.jpg", "Anakin Skywalker", "Você está pegando fogo!"),
    HeroItem("assets/images/2.jpg", "Han Solo", "Você está nem aí!"),
    HeroItem("assets/images/3.jpg", "Baby Yoda", "Você está carente!"),
    HeroItem("assets/images/4.jpg", "Luke Skywalker",
        "Você está atrás de aventuras!"),
    HeroItem("assets/images/5.jpg", "Princesa Leia", "Você está emporad@!"),
    HeroItem(
        "assets/images/6.jpg", "Storm Trooper", "Você está sem o que fazer!"),
    HeroItem(
        "assets/images/7.jpg", "RD-D2 e C3PO", "Você está querendo curtir!"),
    HeroItem("assets/images/8.jpg", "Darth Vader", "Você está malvad@!"),
    HeroItem("assets/images/9.jpg", "Lord Sith", "Você está cansad@!"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title:
              Text('StarToday', style: TextStyle(fontWeight: FontWeight.bold)),
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              child: Text('De 1 até 9, como você se sente hoje?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 16,
                  )),
            ),
            GridView.builder(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                crossAxisCount: 3,
              ),
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return new GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HeroDetailsScreen(
                              image: _items[index].image,
                              name: _items[index].name,
                              description: _items[index].description),
                        ),
                      );
                    },
                    child: HeroThumbnail(
                        assetImage: _items[index].image,
                        number: "${index + 1}"));
              },
            ),
          ],
        ));
  }
}
