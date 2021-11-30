import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/credentials.dart';

import '../scaffold.dart';

TextEditingController _nomeController = TextEditingController();
TextEditingController _userController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _emailController = TextEditingController();

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: appbar,
        body: Container(
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextField(
                  decoration: InputDecoration(
                      labelText: "Nome Completo",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  controller: _nomeController),
              TextField(
                  decoration: InputDecoration(
                      labelText: "Usuário",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  controller: _userController),
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "E-mail",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  controller: _emailController),
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
                      if (_nomeController.text.isEmpty ||
                          _userController.text.isEmpty ||
                          _passwordController.text.isEmpty ||
                          _emailController.text.isEmpty) {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                title: Text("Há campos vazios!"),
                                content: Text("Preencha todos os campos!")));
                      } else {
                        int result = register(
                            _nomeController.text,
                            _userController.text,
                            _passwordController.text,
                            _emailController.text);
                        print(result);
                        if (result == 0) {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                      title: Text("Usuário cadastrado!"),
                                      content: Text(
                                          "${_nomeController.text} Você foi cadastrado(a) com sucesso!"),
                                      actions: [
                                        ElevatedButton(
                                            child: Text("Ok"),
                                            onPressed: () {
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            })
                                      ]));
                        } else {
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                  title: Text("Não foi possível cadastrar!"),
                                  content: Text(
                                      "${_nomeController.text}, seu nome de usuário já existe!")));
                        }
                        _userController.clear();
                        _passwordController.clear();
                      }
                    },
                    child: Text("Registrar")),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
            ],
          ),
        ));
  }
}
