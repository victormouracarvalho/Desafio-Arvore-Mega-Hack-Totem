import 'package:flutter/material.dart';
import 'package:testeprojeto/PaginaUsuario.dart';

class TelaCadastro extends StatefulWidget {
  @override
  _TelaCadastroState createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {

  TextEditingController _controllerNome = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();
  TextEditingController _controllerConfirmar = TextEditingController();

  void _abrirPaginaUsuario(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PaginaUsuario() ));
  }

  bool _estaSelecionado = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Crie sua conta"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top:20, bottom: 20),
                child: Text(
                  "Crie sua conta aqui!",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan
                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Nome Completo: ",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                controller: _controllerNome,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Email: ",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                obscureText: true,
                controller: _controllerEmail,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Senha: ",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                obscureText: true,
                controller: _controllerSenha,
              ),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: "Confirmar senha: ",
                ),
                style:  TextStyle(
                  fontSize: 14,
                ),
                obscureText: true,
                controller: _controllerConfirmar,
              ),
              CheckboxListTile(
                title: Text(
                  "Li e concordo com os termos e condições de uso.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 16
                  ),
                ),
                activeColor: Colors.cyan,
                value: _estaSelecionado,
                onChanged: (bool valor){
                  setState(() {
                    _estaSelecionado = valor;
                  });
                },
              ),
              Padding(
                padding: EdgeInsets.only(top: 10,bottom: 20),
                child: Text(
                  "Termos e Condições de Uso",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.cyan,
                      decoration: TextDecoration.underline
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.cyan,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                    "Criar Conta",
                    style: TextStyle(
                        fontSize: 18
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onPressed: _abrirPaginaUsuario,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 30),
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
