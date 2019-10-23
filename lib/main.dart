import 'dart:math';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _phrases = [
    "Phrase 1",
    "Phrase 2",
    "Phrase 3",
    "Phrase 4",
    "Phrase 5",
    "Phrase 6",
  ];
  var _phraseGenerate = "Click down here to generate a new phrase";

  void _phrasesGenerator(){
    // Take a random number from the array of Phrases
    var numRandom = Random().nextInt(_phrases.length);
    // Change the state of the screen to a new phrase
    setState(() {
      _phraseGenerate = _phrases[numRandom];  
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Phrase of the day"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _phraseGenerate,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              RaisedButton(
                child: Text(
                  "New Phrase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.red,
                onPressed: _phrasesGenerator,

              )
            ],
          ),
        ),
      ),
    );
  }
}
