import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Joken extends StatefulWidget {
  @override
  _JokenState createState() => _JokenState();
}

class _JokenState extends State<Joken> {
  var _imageApp = AssetImage("");

  var _mesage = "Escolha uma opção";
  var _userWin = 0;
  var _computerWin = 0;
  var _draw = 0;

  void _selectedOption(String userChoice) {
    var options = ["pedra", "papel", "tesoura"];
    var number = Random().nextInt(3);
    var choseApp = options[number];

    switch (choseApp) {
      case "pedra":
        setState(() {
          this._imageApp = AssetImage("");
        });
        break;

      case "papel":
        setState(() {
          this._imageApp = AssetImage("");
        });
        break;

      case "tesoura":
        setState(() {
          this._imageApp = AssetImage("");
        });
    }

    if ((userChoice == "pedra" && choseApp == "tesoura") ||
        (userChoice == "tesoura" && choseApp == "papel") ||
        (userChoice == "papel" && choseApp == "pedra")) {
      setState(() {
        this._mesage = "Você ganhou :D";
        _userWin += 1;
      });
    } else if ((userChoice == "tesoura" && choseApp == "pedra") ||
        (userChoice == "papel" && choseApp == "tesoura") ||
        (userChoice == "pedra" && choseApp == "papel")) {
      setState(() {
        this._mesage = "Vitoria do computador";
        _computerWin += 1;
      });
    } else {
      setState(() {
        this._mesage = "Empate ;)";
        _draw += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text("Escolha o App",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _selectedOption("pedra"),
                child: Image.asset("", height: 100),
              ),
              GestureDetector(
                onTap: () => _selectedOption("papel"),
                child: Image.asset(
                  "",
                  height: 100,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Text(
                  "Você: $_userWin",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Computador: $_computerWin",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: Text(
                  "Empate: $_draw",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
