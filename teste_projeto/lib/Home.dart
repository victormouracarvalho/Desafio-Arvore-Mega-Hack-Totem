import 'package:flutter/material.dart';
import 'package:testeprojeto/LoginUm.dart';
import 'package:testeprojeto/RankingGeral.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  void _abrirLoginUm(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginUm() ));
  }
  void _abrirRankingGeral(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => RankingGeral() ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Árvore Educação"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo_sem_fundo.png", fit: BoxFit.scaleDown),
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Faça seu login na plataforma!",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white
                      ),
                    ),
                    onPressed: _abrirLoginUm
                ),
              ),
              Padding( //para o botão
                padding: EdgeInsets.only(top: 30),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Acesse o ranking de leitores!",
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    onPressed: _abrirRankingGeral
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Copyright © 2020 Árvore Educação. Todos os direitos reservados.",
                  style: TextStyle(
                      fontSize: 11,
                      color: Colors.cyan
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),

         ),
    );
  }
}
