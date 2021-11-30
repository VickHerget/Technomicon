import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appbar = AppBar(
    backgroundColor: Colors.blue[900],
    shadowColor: Colors.blueAccent,
    title: Text(
      "Technomicon",
      textAlign: TextAlign.center,
      style: GoogleFonts.fondamento(
          textStyle: TextStyle(fontWeight: FontWeight.w900)),
    ));

Container Article(
    String title, double scale, Color bgcolor, String image, Container info) {
  Container article = Container(
      child: Scaffold(
          backgroundColor: bgcolor,
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            shadowColor: Colors.blueAccent,
            title: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.fondamento(
                  textStyle: TextStyle(fontWeight: FontWeight.w900)),
            ),
          ),
          body: Container(
              decoration:
                  BoxDecoration(border: new Border.all(color: Colors.black)),
              margin: EdgeInsets.all(30),
              child: SingleChildScrollView(
                  child: Column(children: [
                Padding(
                    padding: EdgeInsets.all(35),
                    child: Row(children: [
                      Image.asset(
                        'images/$image',
                        scale: scale,
                      ),
                      Text(title,
                          style: GoogleFonts.yuseiMagic(
                              textStyle: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  decorationStyle: TextDecorationStyle.solid,
                                  decorationThickness: 2.0)))
                    ])),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: info,
                )
              ]))),
          bottomNavigationBar: bottomBar));
  return article;
}

BottomAppBar bottomBar = BottomAppBar(
  color: Colors.blueGrey,
  child: Padding(
    padding: EdgeInsets.all(10),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          TextButton.icon(
              icon: Icon(Icons.person_sharp),
              onPressed: () {
                print("perfil acessado");
              },
              label: Text("Perfil",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)))),
          TextButton.icon(
              icon: Icon(Icons.favorite_sharp),
              onPressed: () {
                print("favoritos acessado");
              },
              label: Text("Favoritos",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)))),
          TextButton.icon(
              icon: Icon(Icons.adjust),
              onPressed: () {
                print("config acessado");
              },
              label: Text("Configurações",
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)))),
          TextButton(
              onPressed: () {
                print("site acessado");
              },
              child: Image.asset("images/EzAppily Logo Smol.png",
                  alignment: Alignment.bottomRight)),
        ]),
  ),
);
