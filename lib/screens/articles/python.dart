import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/scaffold.dart';

Container info = Container(
    child: Column(children: [
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("O que é Python?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "Python é uma linguagem de programação criada por Guido van Rossum em 1991. Os objetivos do projeto da linguagem eram: produtividade e legibilidade. Em outras palavras, Python é uma linguagem que foi criada para produzir código bom e fácil de manter de maneira rápida. Entre as características da linguagem que ressaltam esses objetivos estão\n>baixo uso de caracteres especiais, o que torna a linguagem muito parecida com pseudo-código executável;\n>o uso de identação para marcar blocos;\n>quase nenhum uso de palavras-chave voltadas para a compilação;\n>coletor de lixo para gerenciar automaticamente o uso da memória;\netc.\nAlém disso, Python suporta múltiplos paradigmas de programação. A programação procedimental pode ser usada para programas simples e rápidos, mas estruturas de dados complexas, como tuplas, listas e dicionários, estão disponíveis para facilitar o desenvolvimento de algoritmos complexos. Grandes projetos podem ser feitos usando técnicas de orientação a objetos, que é completamente suportada em Python (inclusive sobrecarga de operadores e herança múltipla). Um suporte modesto para programação funcional existe, o que torna a linguagem extremamente expressiva: é fácil fazer muita coisa com poucas linhas de comando. E também possui inúmeras capacidades de meta-programação: técnicas simples para alterar o comportamento de comportamentos da linguagem, permitindo a criação de linguagens de domínio específico.\nPython tem uma biblioteca padrão imensa, que contém classes, métodos e funções para realizar essencialmente qualquer tarefa, desde acesso a bancos de dados a interfaces gráficas com o usuário. E, logicamente, já que esse é o objetivo deste grupo, existem muitas ferramentas para lidar com dados científicos. Essa característica da linguagem é comumente chamado baterias inclusas, significando que tudo que você precisa para rodar um programa está — na maior parte das vezes — presente na instalação básica.\nPor fim, e não menos importante, Python é uma linguagem livre e multiplataforma. Isso significa que os programas escritos em uma plataforma serão executados sem nenhum problema na maioria das plataformas existentes sem nenhuma modificação. E, caso a plataforma objetivo não tenha uma versão de Python, desenvolvedores têm a liberdade de estudar e modificar o código da linguagem para fazer com que ela rode onde quer que seja.",
    style: GoogleFonts.amiko(),
  ),
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Por que Python?",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "É fácil ver que a linguagem tem facilidades incríveis para uso geral. A pergunta é: por que Python é a linguagem ideal para aplicações científicas? As respostas são muitas, mas podemos resumir algumas aqui. A primeira razão, e provavelmente a principal, é: Python é uma linguagem expressiva, em que é fácil traduzir o raciocínio em um algoritmo. Em aplicações científicas, o raciocínio é essencialmente complicado — essa é a natureza das ciências. É um problema adicional para o cientista ter que se preocupar com, além do assunto básico de sua pesquisa, a correção do programa em detalhes pouco relevantes: alocação de memória, gerenciamento de recursos, etc. Python faz isso tudo automaticamente de maneira muito eficiente, permitindo ao cientista se concentrar exclusivamente no problema sendo estudado. \nPython é extremamente legível. Isso significa que é muito fácil compreender programas escritos há algum tempo. É muito comum que os programas em atividades científicas sejam criados a partir da evolução de algoritmos anteriores. Portanto, é extremamente importante ser capaz de entender o que foi feito antes. Uma vez que as palavras-chave da linguagem Python são voltadas para a estruturação dos programas (e não para indicar ao computador como compilar ou interpretar trechos de código), não existem trechos de código que são inúteis para o raciocínio.\nPython tem uma comunidade ativa e vibrante, espalhada por todo o mundo. E, sendo uma linguagem livre, todos os seus usuários estão dispostos a contribuir (este site é um exemplo disso, já que todos seus contribuidores são voluntários). Isso faz com que a documentação seja abundante e existam módulos para executar virtualmente qualquer tarefa necessária. Isso é importante: não há tempo para reinventar a roda, então poder contar com módulos prontos é ótimo. Mas, mais que isso, uma vez que os programas em Python são distribuídos na forma de código-fonte, qualquer pessoa pode alterar, corrigir e melhorar os algoritmos. Isso faz com que os módulos sejam maduros e seguros, testados contra diversas situações e diversas vezes. A robustez alcançada é um fator importante.\nPython é, além disso, uma linguagem de propósito geral. Muitas vezes, é necessário lidar com tarefas laterais: buscar dados em um banco de dados remoto, ler uma página na internet, exibir graficamente os resultados, criar uma planilha, etc. Linguagens de cunho especificamente científico têm um sério problema aí, mas, uma vez que Python é utilizada em praticamente todo tipo de tarefa, encontram-se módulos prontos para realizar essas tarefas que podem ser tornar complicadas. Novamente, é uma preocupação a menos para quem está desenvolvendo aplicações científicas.\nPor esses e ainda outros motivos, Python tem conquistado uma grande popularidade entre a comunidade científica. É uma linguagem simples que dá conta do recado e não fica entre o cientista e a resolução do seu problema. Essa frase provavelmente resume todos os motivos necessários para sua utilização.",
    style: GoogleFonts.amiko(),
  ),
]));

class Python extends StatelessWidget {
  const Python({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Article("Python", 9.0, Color(0xff7d7b68), "Python-big.png", info);
  }
}
