import 'dart:io';
import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/headerBuilder.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class AboutsScreen extends StatelessWidget {
  AboutsScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [backgroundColor, backgroundColor],
          stops: [0.3, 0.3],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(context, screenWidth, screenHeight),
                _body(context, screenWidth, screenHeight),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(
      BuildContext context, double screenWidth, double screenHeight) {
    return HeaderBuilder(
      left: IconButton(
        icon: Icon(
          Icons.logout,
          color: backgroundColor,
          size: screenWidth * 0.08,
        ),
        onPressed: () => {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      32.0), // Ajuste o valor conforme desejado
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Atenção",
                      style: TextStyle(
                          fontSize: screenWidth * 0.055,
                          fontWeight: FontWeight.bold,
                          color: mainColor),
                    ),
                  ],
                ),
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Deseja realmente sair?",
                      style: TextStyle(
                          color: messageTextColor,
                          fontSize: screenWidth * 0.032),
                    ),
                  ],
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(180.0),
                          ),
                        ),
                        onPressed: () {
                          exit(0);
                        },
                        child: Text(
                          "Sim",
                          style: TextStyle(
                            color: backgroundColor,
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(180.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Não",
                          style: TextStyle(
                            color: backgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          )
        },
      ),
      right: IconButton(
        icon: Icon(
          Icons.help_outline,
          color: backgroundColor,
          size: screenWidth * 0.08,
        ),
        onPressed: () => {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ajuda",
                      style: TextStyle(
                        fontSize: screenWidth * 0.055,
                        fontWeight: FontWeight.bold,
                        color: mainColor,
                      ),
                    ),
                  ],
                ),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Esta tela contém os créditos e os objetivos do aplicativo",
                      style: TextStyle(
                        color: messageTextColor,
                        fontSize: screenWidth * 0.032,
                      ),
                    ),
                  ],
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: mainColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(180.0),
                          ),
                        ),
                        onPressed: () {
                          // Fechar o diálogo sem sair
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Ok",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: screenWidth * 0.032,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          )
        },
      ),
      center: Center(
        child: Container(
          height: screenHeight * 0.2,
          width: screenHeight * 0.2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: Border.all(color: mainColor, width: screenWidth * 0.0025),
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.00125),
            child: Icon(
              Icons.info_outline,
              size: screenHeight * 0.1,
              color: mainColor,
            ),
          ),
        ),
      ),
      top: Text(
        "Sobre o aplicativo",
        style: TextStyle(fontSize: screenWidth * 0.06, color: backgroundColor),
      ),
      bottom: const SizedBox(width: 1),
    );
  }

  Widget _body(BuildContext context, double screenWidth, double screenHeight) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.01),
          Center(
            child: Card(
              color: backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(screenWidth * 0.05),
                side: BorderSide(color: mainColor, width: screenWidth * 0.013),
              ),
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.045),
                width: screenHeight * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: mainColor,
                          size: screenWidth * 0.04,
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Text(
                          "Objetivos",
                          style: TextStyle(
                              fontSize: screenWidth * 0.055, color: mainColor),
                        ),
                      ],
                    ),
                    SizedBox(height: screenWidth * 0.055),
                    Text(
                      "O IFG Mobile é um aplicativo que tem como objetivo apresentar o Instituto Federal de Goiás para toda a comunidade acadêmica, reunindo diversas informações relevantes sobre a instituição.\n\nAtualmente é possível acessar o sistema de bibliotecas Web, consultar informações sobre os câmpus, cursos, telefones, notícias, dúvidas frequentes, calendários acadêmicos e conhecer diversos regulamentos e procedimentos acadêmicos relacionados aos cursos do IFG e a vida acadêmica dos alunos.\n\nPara os alunos com vínculo, foi realizada uma integração com o Sistema Acadêmico do IFG permitindo consultar o Histórico, Boletim, Notas de Avaliações, Horários e Materiais de Aulas. O aluno também pode visualizar a Carteira Estudantil. Para os professores, é possível consultar os Horários de Aula e alunos matriculados nos diários. A Identifiação Funcional pode ser visualizada por todos os servidores do IFG. Este aplicativo é uma iniciativa da equipe da Pró-Reitoria de Ensino do Instituto Federal de Goiás.",
                      style: TextStyle(
                          fontSize: screenWidth * 0.032,
                          color: messageTextColor),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
