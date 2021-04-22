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
  final rightAnswerColor = 0xFF28A745;
  final wrongAnswerColor = 0xFFDC3545;

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
                  margin: EdgeInsets.only(top: 30),
                  width: 200,
                  height: 200,
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
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.5),
                  ),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            "Quem é esse Pokémon?",
                            style: TextStyle(
                                fontFamily: "Pokemon",
                                fontSize: 28,
                                letterSpacing: 2),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 50),
                            child: Column(
                              children: [
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width) - 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Button Pressed");
                                    },
                                    child: Text("Charizard"),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(rightAnswerColor)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width) - 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Button Pressed");
                                    },
                                    child: Text("Squirtle"),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(wrongAnswerColor)),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width) - 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Button Pressed");
                                    },
                                    child: Text(
                                      "Dragonite",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width) - 50,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      print("Button Pressed");
                                    },
                                    child: Text(
                                      "Chikorita",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
