import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/scaffold.dart';
import 'package:technomicon/screens/results.dart';

TextEditingController _pesquisa = TextEditingController();

class Home extends StatefulWidget {
  String nome = "Usuário";
  Home(this.nome);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: appbar,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Center(
          child: Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset('images/Technomicon.png',
                  scale: 4.0, fit: BoxFit.scaleDown),
              Text(
                "Seja bem-vindo(a), ${widget.nome}!\n O Technomicon é um grande repertório de conteúdo sobre tecnologia,\npesquise por palavras-chave, estude, revise e encontre materiais para expandir seus conhecimentos!",
                textAlign: TextAlign.center,
                style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20)),
              ),
              Padding(padding: (EdgeInsets.only(top: 30))),
              TextField(
                  controller: _pesquisa,
                  enableSuggestions: true,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 16, letterSpacing: 3),
                  decoration: InputDecoration(
                      hintText: "Pesquise aqui",
                      hintStyle: TextStyle(fontStyle: FontStyle.italic)),
                  onSubmitted: (String pesquisa) => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Results(_pesquisa.text)))),
            ],
          )),
        ),
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
