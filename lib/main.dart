import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PokéQuiz"),
        backgroundColor: Color(0xFFDB1612),
      ),
      body: Container(
        color: Color(0xFFDB1612),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                child: Stack(
              children: [
                Image.asset(
                  "assets/images/banner.jpg",
                ),
                Container(
                  margin: EdgeInsets.only(top: 80, left: 10),
                  width: 130,
                  height: 130,
                  child: ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return RadialGradient(
                        center: Alignment.topLeft,
                        radius: 1.0,
                        colors: <Color>[Colors.black, Colors.black],
                        tileMode: TileMode.mirror,
                      ).createShader(bounds);
                    },
                    child: Image.network(
                      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png",
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Container(
                  height: 400,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  child: Container(
                    margin: EdgeInsets.only(left: 18, right: 18),
                    child: Text(
                      "Quem é esse Pokémon?",
                      style: TextStyle(
                          fontFamily: "Pokemon",
                          fontSize: 28,
                          letterSpacing: 2),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
