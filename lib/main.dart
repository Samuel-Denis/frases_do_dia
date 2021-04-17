import 'dart:math';
import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.",
    "Imagine uma nova história para sua vida e acredite nela.",
    "Não espere por uma crise para descobrir o que é importante em sua vida.",
    "Acredite em si próprio e chegará um dia em que os outros não terão outra escolha senão acreditar com você.",
    "Pessimismo leva à fraqueza, otimismo ao poder.",
  ];

  var _fraseGerada = "Clique Abaixo para gerar uma nova frase" ;

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt( _frases.length );

    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 27,
                  fontStyle: FontStyle.italic,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RaisedButton(
                child: Text("Nova Frasse",
                style: TextStyle( fontSize: 27,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
                ),
                color: Colors.tealAccent,
                onPressed: _gerarFrase,
              )
            ],
          ),
        ),

      );
  }
}
