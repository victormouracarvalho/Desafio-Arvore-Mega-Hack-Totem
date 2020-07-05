import 'package:flutter/material.dart';
import 'package:testeprojeto/TelaQRCode.dart';

class PaginaUsuario extends StatefulWidget {
  @override
  _PaginaUsuarioState createState() => _PaginaUsuarioState();
}

class _PaginaUsuarioState extends State<PaginaUsuario> {

  void _abrirQRCode(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TelaQRCode() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text("Página do Usuário"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Image.asset("images/login_azul_escuro.jpg", fit: BoxFit.scaleDown),
             Padding(
               padding: EdgeInsets.only(top: 5),
               child: Text(
                 "João Silva",
                 style: TextStyle(
                     fontSize: 22,
                   color: Colors.cyan,
                   fontWeight: FontWeight.bold
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 10),
               child: Text(
                 "Estudante da Escola Árvore",
                 style: TextStyle(
                     fontSize: 16,
                   color: Colors.cyan,
                   fontWeight: FontWeight.bold
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 5),
               child: Text(
                 "Campinas - São Paulo",
                 style: TextStyle(
                     fontSize: 16,
                   color: Colors.cyan,
                   fontWeight: FontWeight.bold
                 ),
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 15),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text(
                     "Livros baixados: ",
                     style: TextStyle(
                         fontSize: 14,
                       color: Colors.cyan
                     ),
                   ),
                   Text(
                     "50",
                     style: TextStyle(
                         fontSize: 14,
                         color: Colors.cyan
                     ),
                   )
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text(
                     "Posição no Ranking: ",
                     style: TextStyle(
                         fontSize: 14,
                         color: Colors.cyan
                     ),
                   ),
                   Text(
                     "10º lugar",
                     style: TextStyle(
                         fontSize: 14,
                         color: Colors.cyan
                     ),
                   )
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   Text(
                     "Pontos no Ranking: ",
                     style: TextStyle(
                         fontSize: 14,
                         color: Colors.cyan
                     ),
                   ),
                   Text(
                     "200",
                     style: TextStyle(
                         fontSize: 14,
                         color: Colors.cyan
                     ),
                   )
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(top: 30),
               child: RaisedButton(
                 color: Colors.cyan,
                 textColor: Colors.white,
                 padding: EdgeInsets.all(15),
                 child: Text(
                   "Baixe seus livros!",
                   style: TextStyle(
                       fontSize: 16
                   ),
                 ),
                 onPressed: _abrirQRCode,
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

