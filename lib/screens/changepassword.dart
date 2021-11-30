import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/credentials.dart';

import '../scaffold.dart';

TextEditingController _userController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

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
              TextField(
                  decoration: InputDecoration(
                      labelText: "Usuário",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  controller: _userController),
              TextField(
                  decoration: InputDecoration(
                      labelText: "Nova Senha",
                      labelStyle: GoogleFonts.roboto(
                          textStyle: TextStyle(fontWeight: FontWeight.bold))),
                  obscureText: true,
                  controller: _passwordController),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                    onPressed: () {
                      if (changePassword(
                            _userController.text,
                            _passwordController.text,
                          ) ==
                          0) {
                        showDialog(
                            context: context,
                            builder: (context) => (AlertDialog(
                                title: Text("Senha alterada"),
                                content: Text("Sua senha foi alterada!"))));
                        _userController.clear();
                        _passwordController.clear();
                        Navigator.pop(context);
                      } else {
                        showDialog(
                            context: context,
                            builder: (context) => (AlertDialog(
                                title: Text("Erro"),
                                content: Text("Usuário não encontrado!"))));
                        _userController.clear();
                        _passwordController.clear();
                      }
                    },
                    child: Text("Alterar")),
              ),
            ],
          ),
        )));
  }
}
