import 'package:desafio01/modules/heros/screens/heros_list_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                  'Descobrir como voce starhoje nunca foi tão facil!', style: TextStyle(
                  color: Colors.yellow,
                  fontFamily: 'Starjedi',
                  fontSize: 20
                ),
              )
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 30),
              child: Text('Saber como você esta hoje é fundamental para organizar o trabalho com o time e garantir o aprendizado em equipe.', style: TextStyle(
                color: Colors.yellow,
                fontSize: 16,
              )),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(40),
                padding: const EdgeInsets.all(20.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HerosListScreen(),
                  ),
                );
              },
              child: Text('Começar a usar'.toUpperCase(), style: TextStyle(
                  fontWeight: FontWeight.bold
              )),
            )
          ],
        ),
      ),
    );
  }
}