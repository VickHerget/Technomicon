import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../scaffold.dart';
import 'articles/cc.dart';
import 'articles/csharp.dart';
import 'articles/flutter.dart';
import 'articles/java.dart';
import 'articles/python.dart';
import 'login.dart';

List<String> categories = [
  "Linguagem de programação",
  "Framework",
  "Curso",
  "Tecnologia",
  "Software",
  "Hardware"
];
Map<String, List> temas = {
  //NAME : [icon, category, description, routename, screen]
  //'Flutter':{'category': categories[1], 'description': "" },
  'Flutter': [
    "flutter.png",
    categories[1],
    "Um framework desenvolvido pela Google, que utiliza linguagem Dart para aplicações Mobile e Web",
    '/flutter',
    (context) => Flutter()
  ],
  'Ciência da Computação': [
    "information-technology.png",
    categories[2],
    "O estudo da tecnologia, da informática e uma das áreas mais importantes para o futuro",
    '/cc',
    (context) => CC()
  ],
  'Python': [
    "python.png",
    categories[0],
    "Uma linguagem promissora com um estilo único e prático com enorme versatilidade",
    '/python',
    (context) => Python()
  ],
  'C#': [
    "csharp.png",
    categories[0],
    "Uma das linguagens da família C, que veio junto com o .NET da Microsoft e tem grande renome no mercado",
    '/csharp',
    (context) => Csharp()
  ],
  'Java': [
    "java.png",
    categories[0],
    "Uma linguagem famosa e inovadora, com uma grande história, relevante até hoje, que já teve sua glória na criação de aplicações",
    '/java',
    (context) => Java()
  ],
};
Map<String, Widget Function(BuildContext)> defineRoutes() {
  return createRoutes((context) => const Login(), temas);
}

Map<String, Widget Function(BuildContext)> createRoutes(
    Widget Function(BuildContext) firstScreen, Map temas) {
  Map<String, Widget Function(BuildContext)> routes = Map();
  routes['/'] = firstScreen;
  temas.forEach((key, value) => routes[value[3]] = value[4]);
  print(routes);
  return routes;
}

class Results extends StatefulWidget {
  String pesquisa;
  Results(this.pesquisa);

  @override
  _ResultsState createState() => _ResultsState();
}

List<Widget> createResultList(BuildContext context, Map temas) {
  List<Widget> results = [];
  temas.forEach((key, value) => results.add(Padding(
      padding: EdgeInsets.only(top: 25),
      child: ListTile(
          tileColor: Colors.grey[500],
          onTap: () => Navigator.pushNamed(context, value[3]),
          mouseCursor: MaterialStateMouseCursor.clickable,
          hoverColor: Colors.blueGrey[350],
          leading: Image.asset("images/${value[0]}"),
          title: Text(key,
              style: GoogleFonts.acme(
                  textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline))),
          subtitle: Text(value[1] + "\n" + value[2],
              style: TextStyle(color: Colors.black)),
          isThreeLine: true,
          dense: true,
          trailing: Icon(Icons.star)))));
  return results;
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: appbar,
        body: Padding(
            padding: EdgeInsets.all(30),
            child: ListView(children: createResultList(context, temas))),
        bottomNavigationBar: bottomBar);

    //)));
  }
}
/*Text(
                  "Esses são os resultados da sua pesquisa por ${widget.pesquisa}:",
                  style: GoogleFonts.aldrich(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 20))]))*/
