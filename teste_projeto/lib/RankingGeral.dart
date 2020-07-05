import 'package:flutter/material.dart';

class RankingGeral extends StatefulWidget {
  @override
  _RankingGeralState createState() => _RankingGeralState();
}

class _RankingGeralState extends State<RankingGeral> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Ranking de Leitores"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    "Ranking dos maiores leitores do mês",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 19,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold
                    ),
                  )
              ),
              Image.asset("images/Podio.png", fit: BoxFit.scaleDown),
              Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 20),
                  child: Text(
                    "Parabéns aos 3 ganhadores do livro físico!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold
                    ),
                  )
              ),
              Image.asset("images/ranking.png"),
              Padding(
                padding: EdgeInsets.only(top: 10),
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