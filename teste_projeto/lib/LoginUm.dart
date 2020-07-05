import 'package:flutter/material.dart';
import 'package:testeprojeto/LoginGoogle.dart';
import 'package:testeprojeto/LoginNormal.dart';
import 'package:testeprojeto/TelaCadastro.dart';

class LoginUm extends StatefulWidget {
  @override
  _LoginUmState createState() => _LoginUmState();
}

class _LoginUmState extends State<LoginUm> {

  void _abrirLoginNormal(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginNormal() ));
  }
  void _abrirLoginGoogle(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginGoogle() ));
  }
  void _abrirTelaCadastro(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaCadastro() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "Login",
          textAlign: TextAlign.center,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/login_azul_escuro.jpg", fit: BoxFit.contain),
              Padding( //para o botão
                padding: EdgeInsets.all(20),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Faça seu login!",
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: _abrirLoginNormal
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5, bottom: 2),
                  child: Text(
                    "Ou",
                    style: TextStyle(
                        fontSize: 16,
                      color: Colors.cyan
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Login com Google!",
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: _abrirLoginGoogle
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    "Não tem uma conta?",
                    style: TextStyle(
                        fontSize: 16,
                      color: Colors.cyan
                    ),
                    textAlign: TextAlign.center,
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                    color: Colors.cyan,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Crie já a sua!",
                      style: TextStyle(
                          fontSize: 18
                      ),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: _abrirTelaCadastro
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
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
