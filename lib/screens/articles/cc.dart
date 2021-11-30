import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/scaffold.dart';

Container info = Container(
    child: Column(children: [
  Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Text("Introdução",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "De acordo com especialistas, existem 460 mil vagas de emprego abertas em Tecnologia da Informação no Brasil, mas faltam profissionais qualificados para preenchê-las. Ciência da Computação é um dos cursos da área que possui mais oportunidades.\nSe você tem interesse em ciências exatas e programação, esse curso pode ser a sua opção. Continue lendo este post e descubra o que é Ciência da Computação, quais são as atividades desempenhadas pelos profissionais da área e o que se estuda nessa graduação.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Text("O que é Ciência da Computação?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Ciência da Computação é a área do conhecimento que atua no desenvolvimento de programas para diferentes dispositivos, a exemplo de celulares e computadores. Programação, banco de dados e sistemas operacionais fazem parte do dia a dia de quem se forma na faculdade de Ciência da Computação.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Text("Como se tornar um cientista da computação?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Para se tornar um cientista da computação, é imprescindível fazer uma faculdade. Dessa forma, adquire-se os conhecimentos e a comprovação de formação necessários para atuar no mercado. A graduação em Ciência da Computação tem quatro anos de duração e conta com disciplinas práticas e teóricas.\nA matriz curricular do curso é composta por matérias de matemática e fundamentos de computação. Alguns exemplos são Cálculo I, Geometria Analítica e Álgebra Linear, Lógica Matemática, Estruturas de Dados e Algoritmos, Fundamentos de Sistemas Operacionais, Programação Avançada e Engenharia de Software.\nTambém são oferecidas disciplinas de gestão e empreendedorismo, cada vez mais importantes para as tomadas de decisões estratégicas nas empresas.\nAlém de conhecer a grade de Ciência da Computação, também é importante escolher uma faculdade que esteja alinhada com os avanços tecnológicos e ofereça matérias sobre tendências do futuro.",
    style: GoogleFonts.amiko(),
  ),
]));

class CC extends StatelessWidget {
  const CC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Article(
        "Ciência da Computação", 2.0, Color(0xff86eb90), "CC-big.png", info);
  }
}
