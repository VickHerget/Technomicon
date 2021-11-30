import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/screens/changepassword.dart';
import 'package:technomicon/screens/home.dart';
import 'package:technomicon/screens/register.dart';

import '../credentials.dart';
import '../scaffold.dart';

TextEditingController _userController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: appbar,
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Olá! Insira suas informações para entrar no Technomicon!",
                style: GoogleFonts.aldrich(
                    textStyle:
                        TextStyle(fontWeight: FontWeight.w800, fontSize: 20)),
              ),
              TextField(
                  decoration: InputDecoration(
                      labelText: "Usuário",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  controller: _userController),
              TextField(
                  decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  obscureText: true,
                  controller: _passwordController),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      String nome = validate(
                          _userController.text, _passwordController.text);
                      if (nome == "Senha inválida") {
                        showDialog(
                            context: context,
                            builder: (context) => (AlertDialog(
                                title: Text("Senha incorreta"),
                                content: Text("Tente novamente"))));
                        _userController.clear();
                        _passwordController.clear();
                      } else if (nome == "Usuário não cadastrado") {
                        showDialog(
                            context: context,
                            builder: (context) => (AlertDialog(
                                title: Text("Usuário não cadastrado"),
                                content: Text("Registre-se primeiro"))));
                        _userController.clear();
                        _passwordController.clear();
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Home(nome)));
                        _userController.clear();
                        _passwordController.clear();
                      }
                    },
                    child: Text("Logar")),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Primeiro acesso? ",
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: Text("Crie seu usuário",
                                style: TextStyle(
                                    decoration: TextDecoration.underline))),
                      ])),
              Padding(
                padding: EdgeInsets.only(top: 2),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Esqueceu a senha? ",
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChangePassword()));
                          },
                          child: Text("Redefinir senha",
                              style: TextStyle(
                                  decoration: TextDecoration.underline)))
                    ]),
              )
            ],
          ),
        )));
  }
}
