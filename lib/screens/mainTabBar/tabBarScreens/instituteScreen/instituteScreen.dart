import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/horizontalBorderlessButtom.dart';
import 'campiCard.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/veryLongHorizontalButtom.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/headerBuilder.dart';
import 'package:ifg_mobile_estudante/screens/publicScreens/storyOfInstitute.dart';
import 'MapScreen.dart';
import 'dart:convert' show json;
import 'package:ifg_mobile_estudante/screens/publicScreens/rectoryScreen.dart';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;
import 'package:ifg_mobile_estudante/styles/colors.dart';

class InstituteScreen extends StatelessWidget {
  InstituteScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            backgroundColor,
            backgroundColor,
          ],
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
                        fontSize: screenWidth * 0.032,
                      ),
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
                          // Implementar aqui a lógica para sair

                          exit(0);
                        },
                        child: Text(
                          "Sim",
                          style: TextStyle(
                            color: backgroundColor,
                            fontSize: screenWidth * 0.032,
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
                          // Fechar o diálogo sem sair
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Não",
                          style: TextStyle(
                            color: backgroundColor,
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
                      "Para ver a história do instituto, clique em histórico, "
                      "\n\nPara ver informações e contatos da reitoria clique em reitoria"
                      "\n\nPara visualizar informações de um campus, clique no botão do respectivo Campus.",
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
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Ok",
                          style: TextStyle(
                            color: backgroundColor,
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
              border:
                  Border.all(color: mainColor, width: screenWidth * 0.0025),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.00125),
              child: Icon(
                Icons.school,
                size: screenHeight * 0.1,
                color: mainColor,
              ),
            ),
          ),
        ),
      top: Text(
        "Sobre a instituição",
        style: TextStyle(fontSize: screenWidth * 0.06, color:backgroundColor),
      ),
      bottom: const SizedBox(width: 1),
    );
  }

  Widget _body(BuildContext context, double screenWidth, double screenHeight) {
    return Container(
      padding: EdgeInsets.only(bottom: screenHeight * 0.01),
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HorizontalBorderlessButtom(
                "Histórico \ndo IFG",
                Icons.history,
                onPressed: () async {
                  final String jsonData =
                      await rootBundle.loadString('assets/data/story.json');

                  final Map<String, dynamic> data = json.decode(jsonData);

                  final story = data['Histórico'];

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StoryOfInstituteScreen(story),
                    ),
                  );
                },
              ),
              SizedBox(width: screenWidth * 0.02),
              HorizontalBorderlessButtom(
                'Reitoria',
                Icons.assignment_ind,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RectoryScreen(),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.02),
          VeryLongHorizontalButtom(
            "Mapa do IFG",
            Icons.map,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MapScreen(),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.04),
          Text(
            "Campi e Cursos",
            style:
                TextStyle(fontSize: screenWidth * 0.055, color: mainColor),
          ),
          SizedBox(height: screenHeight * 0.01),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: screenWidth * 0.05,
            runSpacing: screenHeight * 0.015,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Águas Lindas"),
                  CampiCard("Anápolis"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Aparecida"),
                  CampiCard("Goiás"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Formosa"),
                  CampiCard("Goiânia"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Goiânia Oeste"),
                  CampiCard("Itumbiara"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Inhumas"),
                  CampiCard("Jataí"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Luziânia"),
                  CampiCard("Senador Canedo"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CampiCard("Uruaçu"),
                  CampiCard("Valparaíso"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
