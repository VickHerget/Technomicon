import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:technomicon/scaffold.dart';

Container info = Container(
    child: Column(children: [
  Padding(
      padding: EdgeInsets.only(bottom: 15),
      child: Text("Linguagem C#:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800))),
  Text(
    "O C# (leia-se C-Sharp), é uma linguagem de programação orientada a objetos, que foi desenvolvida pela Microsoft e faz parte da plataforma .NET. Embora a linguagem C# tenha sido criada do zero, foi baseada na linguagem C++ e tem muitos elementos da linguagem Pascal e Java.\nA plataforma .NET teve suas bibliotecas inicialmente feitas em Simple Managed C (SMC), porém esta limitou muito o trabalho na plataforma. No inicio de 1999 foi montada uma equipe, liderada por Anders Hejlsberg, com o objetivo de criar uma nova linguagem para a plataforma .NET. Esta linguagem seria criada para desprender a plataforma .NET de outras linguagens, pois o código das linguagens já existentes limitava o desenvolvimento da plataforma.\nEsta linguagem foi desenvolvida com o nome de Cool. No momento do lançamento da plataforma .NET, mudaram o nome da linguagem para C#. A criação da linguagem C# ajudou muito no desenvolvimento do .NET, pois a plataforma não precisou se adequar a nenhum código de alguma linguagem já existente. O C# foi criado especificamente para .NET, sendo que muitas outras linguagens tem suporte á C#. Algumas destas linguagens são VB.NET, C++ e J#. Embora a linguagem C# seja considerada muito semelhante ao Java, existem também varias diferenças:Java não tem a função de implementar propriedades nem sobrecarga de operadores, o C# tem esta função.\n>Java não tem a função de implementar um modo inseguro que pode ser utilizado para manipulação de ponteiros e aritmética sem checagem. Esta função é característica do C#\n>Java possui as exceções checadas, enquanto as exceções em C# não são checadas (assim como em C++)\n>Enquanto Java utiliza comentários Javadoc para gerar documentação automática, O C# Utiliza o XML.\n>C# tem suporte à indexadores, e o Java não.\n\nEntre as linguagens de programação, o que mais muda é o jeito de escrever o código, e não as palavras em si. Quando uma pessoa aprende uma linguagem de programação, fica muito mais fácil aprender as demais (do .NET), pois as maiores mudanças são na sintaxe, o jeito como esta o código.",
    style: GoogleFonts.amiko(),
  ),
]));

class Csharp extends StatelessWidget {
  const Csharp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Article("C#", 9.0, Color(0xffea9eff), "Csharp-big.png", info);
  }
}
