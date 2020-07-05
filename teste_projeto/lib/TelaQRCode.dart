import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TelaQRCode extends StatefulWidget {
  @override
  _TelaQRCodeState createState() => _TelaQRCodeState();
}

class _TelaQRCodeState extends State<TelaQRCode> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Download de Livros"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Baixe seus livros favoritos em seu dispositivo Android/IOS ",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.cyan,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom:10),
                child: Text(
                  "Escaneie o QR Code abaixo para baixar seus livros e ler quando quiser!",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.cyan
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Image.asset ("images/login_arvore_site.png", fit: BoxFit.scaleDown),
              Padding( //para o botão
                padding: EdgeInsets.only(top: 40),
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
        )
      ),
    );
  }
}
