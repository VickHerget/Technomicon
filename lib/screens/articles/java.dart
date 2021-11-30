import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/scaffold.dart';

Container info = Container(
    child: Column(children: [
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("O que é Java?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "O Java é uma linguagem de programação orientada a objetos e é uma das linguagens mais utilizadas pelas empresas na atualidade no desenvolvimento de aplicações WEB e Mobile.\nO Java foi criado em 1995 na empresa Sun Microsystem por uma equipe chefiada por James Gosling, conhecido como o pai do Java. Em 2008, o Java foi adquirido pela Oracle e vem crescendo bastante desde então no mercado de tecnologia.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Características?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Algumas características que podemos citar sobre a Linguagem Java são, por exemplo:\n>Orientada a Objetos;\n>Independente de plataforma;\n>Simples;\n>Tipada;\n>Compilada;\n>Interpretada;\n>Imperativa;\n>JDK (Java Development Kit);\n>JRE  (Java Runtime Environment).\nAgora vamos ver em detalhe cada uma dessas características!",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Orientada a Objetos",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Tudo que é desenvolvido dentro da linguagem Java faz a utilização de classes e objetos. A compreensão deste conceito é fundamental para o uso da linguagem.\nToda classe em Java poderá possuir atributos e métodos. A classe irá servir como um modelo para poder criar diversos objetos, nos quais utilizarão os atributos e métodos fornecidos por aquela determinada classe.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Independente de plataforma",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Todo mundo que é dev já sofreu no momento de fazer a transferência de uma plataforma para outra. Em diversas vezes a pessoa tinha que alterar o código fonte da sua aplicação antes de efetuar compilações em outras plataformas.\nJá os programas em Java não possuem esse problema, pois o Java funciona independente de plataforma, o que permite a devs criarem os seus sistemas sem se preocupar com a plataforma. Isso é possibilitado através de um emulador conhecido como a Máquina Virtual Java (JVM) que ajuda a executar sistemas baseados em Java.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Simples",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Vocês já devem ter escutado muita gente falando que o Java é uma linguagem complexa, porém eu não tenho essa visão.\nO Java possui regras muito bem definidas que facilitam bastante o nosso dia a dia no desenvolvimento de software. É normal ter alguma dificuldade inicial para entender como funciona os Paradigmas da Programação Orientada a Objetos, mas depois que você fica craque no assunto tudo vai dar certo.\nO importante é estudar e praticar sempre que possível para que você consiga fixar bem o conhecimento.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Tipada",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "A linguagem Java é fortemente tipada, isso vem graças a utilização da Tipagem Estática utilizada pelo Java.\nLembrando: linguagem tipada, ou linguagem tipificada, é aquela que usa variáveis com tipos específicos. \nEm outras palavras, isso não permite que devs alterem o tipo da variável após ser declarada. Por exemplo, caso você tenha uma variável na sua aplicação que é um Integer e você está querendo preencher ela com um valor String.\nQuando você tentar fazer a compilação da aplicação, o Java vai te dar um erro ou até mesmo a sua IDE (Integrated Development Environment, ou em português Ambiente de desenvolvimento integrado) irá te mostrar que possui um erro na linha determinada",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Compilada",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "O código de um programa escrito em Java é compilado para uma forma intermediária de código denominada bytecode, que é interpretada pela JVM (Java Virtual Machine).\nEssa característica faz com que os programas em Java sejam independentes de plataforma, executando em qualquer sistema.",
    style: GoogleFonts.amiko(),
  ),
  Image.asset("images/copilacao-Java.png"),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Imperativa",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "É a pessoa desenvolvedora que diz como é o quê exatamente um programa deverá realizar. É nesse paradigma que surgiram os laços de repetição (For, While, Do While), estruturas condicionais (If, Switch-Case) e atribuições de valor à variáveis para controle de estados.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("JDK",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "JDK é a sigla para Java Development Kit. O kit de desenvolvimento Java é um conjunto de utilitários que permite criar sistemas de software para a plataforma Java.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("JRE",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Já JRE é a sigla para Java Runtime Environment. O Ambiente de Execução do Java irá te fornecer as bibliotecas padrões do Java para o JDK compilar o código e para a JVM executar o programa.",
    style: GoogleFonts.amiko(),
  ),
]));

class Java extends StatelessWidget {
  const Java({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Article("Java", 3.0, Color(0xffff828f), "Java-big.png", info);
  }
}
