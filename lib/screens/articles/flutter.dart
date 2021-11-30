import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/scaffold.dart';

Container info = Container(
    child: Column(children: [
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Conceito",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Flutter é um kit de desenvolvimento de interface de usuário (UI toolkit), de código aberto, criado pelo Google, que possibilita a criação de aplicativos compilados nativamente. Atualmente pode compilar para Android, iOS, Windows, Mac, Linux, Google Fuchsia e Web.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("História",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "A primeira versão do Flutter era conhecida com o codinome 'Sky' e era executada no sistema operacional Android. Foi apresentado na cúpula de desenvolvedores Dart de 2015, com a intenção declarada de ser capaz de renderizar consistentemente a 120 quadros por segundo. Durante a keynote do Google Developer Days em Xangai, o Google anunciou o Flutter Release Preview 2, que é o último grande lançamento antes do Flutter 1.0. Em 4 de dezembro de 2018, o Flutter 1.0 foi lançado no evento Flutter Live, denotando a primeira versão 'estável' do Framework. Em 11 de dezembro de 2019, o Flutter 1.12 foi lançado no evento Flutter Interactive.\nEm 6 de maio de 2020 foi lançado o Dart SDK na versão 2.8 e o Flutter na versão 1.17.0, onde foi adicionado suporte a API Metal, melhorando muito o desempenho em dispositivos iOS (50% aproximadamente), novos widgets do Material, além de novas ferramentas de rastreamento de rede e muito mais!",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Linguagem de programação Dart",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Os aplicativos Flutter são escritos na linguagem de programação Dart e fazem uso de muitos dos recursos mais avançados da linguagem.\nNo Windows, macOS e Linux, por meio do projeto semi-oficial Flutter Desktop Embedding, o Flutter é executado na máquina virtual Dart, que possui um mecanismo de compilação que ocorre em tempo de execução. Ao escrever e depurar um aplicativo, o Flutter usa a compilação JIT, permitindo o 'hot reload', com a qual as modificações nos arquivos de origem podem ser injetadas em um aplicativo em execução. O Flutter estende isso com suporte para hot reload de widgets stateful, onde na maioria dos casos as alterações no código-fonte podem ser refletidas imediatamente no aplicativo em execução, sem a necessidade de uma reinicialização ou perda do state.\nAs versões de lançamento dos aplicativos Flutter são compiladas com a compilação antecipada (AOT) no Android e no iOS, possibilitando o alto desempenho do Flutter em dispositivos móveis.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Flutter Engine",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "A engine do Flutter, escrito principalmente em C++, fornece suporte de renderização de baixo nível usando a biblioteca de gráficos Skia do Google. Além disso, ele faz interface com SDKs específicos da plataforma, como os fornecidos pelo Android e iOS.[6]. O Flutter Engine é um runtime portátil para hospedar aplicativos em Flutter. Ele implementa as bibliotecas principais do Flutter, incluindo animação e gráficos, I/O de arquivos e rede, suporte à acessibilidade, arquitetura de plugins e um conjunto de ferramentas de tempo de execução e compilação do Dart. A maioria dos desenvolvedores irá interagir com o Flutter por meio do Flutter Framework, que fornece uma estrutura moderna e reativa e um rico conjunto de platform, layout e foundation widgets.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("A biblioteca Foundation",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "A biblioteca Foundation, escrita em Dart, fornece classes e funções básicas que são usadas para construir aplicativos usando o Flutter, como APIs para se comunicar com a engine.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Design-specific Widgets (Identidade Visual)",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
      "O framework Flutter contém dois conjuntos de widgets que estão em conformidade com linguagens de design específicas. Os widgets do Material Design implementam a identidade visual do Google e os widgets do Cupertino implementam as diretrizes de interface humana para iOS da Apple."),
]));

class Flutter extends StatelessWidget {
  const Flutter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Article("Flutter", 9.0, Color(0xffb5eaff), "Flutter-big.png", info);
  }
}
