import 'package:flutter/material.dart';
import 'gradeActivityCard.dart';
import 'gradePeriodCard.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/headerBuilder.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class GradeDiaryScreen extends StatefulWidget {
  GradeDiaryScreen({Key? key});

  @override
  State<GradeDiaryScreen> createState() => _GradeDiaryScreenState();
}

class _GradeDiaryScreenState extends State<GradeDiaryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<String> periods = [
    "1° Bimestre",
    "2° Bimestre",
    "3° Bimestre",
    "4° Bimestre",
  ];

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      length: periods.length,
      vsync: this,
      initialIndex: 0,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            _header(context, screenWidth, screenHeight),
            Expanded(
              child: _body(context, screenWidth, screenHeight),
            ),
          ],
        ),
      ),
    );
  }

  Widget _header(BuildContext context, screenWidth, screenHeight) {
    return HeaderBuilder(
      left: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: backgroundColor,
          size: screenWidth * 0.08,
        ),
        onPressed: () => {Navigator.of(context).pop()},
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
                backgroundColor: backgroundColor,
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
                      "Seleção de Período: Utilize a barra de navegação na parte superior da tela para selecionar o período letivo desejado.\n\nMédia Final da Etapa: No card grande exibido na parte superior da tela, você encontrará sua média final da etapa. Notas Individuais de Atividades: Abaixo da média final, você verá cards menores representando suas notas individuais em cada atividade. \n\nÍcone de Troféu: Se sua nota estiver dentro da média, você verá um ícone de troféu. Isso indica um bom desempenho na atividade.\n\nÍcone de Alerta: Se sua nota estiver abaixo da média, um ícone de alerta será exibido.",
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
          height: screenHeight * 0.15,
          width: screenHeight * 0.15,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
            border: Border.all(color: mainColor, width: screenWidth * 0.005),
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Icon(
                  Icons.emoji_events,
                  size: screenHeight * 0.1,
                  color: mainColor,
                ),
              ],
            ),
          ),
        ),
      ),
      top: Text(
        "Sistemas Distribuidos",
        style: TextStyle(fontSize: screenWidth * 0.06, color: backgroundColor),
      ),
      bottom: TabBar(
        tabAlignment: TabAlignment.center,
        controller: _tabController,
        isScrollable: true,
        labelColor: backgroundColor,
        unselectedLabelColor: Colors.greenAccent[100],
        indicatorColor: backgroundColor,
        dividerColor: Colors.transparent,
        indicatorPadding: EdgeInsets.zero,
        tabs: periods
            .map(
              (day) => Tab(
                child: Container(
                  child: Text(
                    day,
                    style: TextStyle(
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }

  Widget _body(BuildContext context, screenWidth, screenHeight) {
    return TabBarView(
      controller: _tabController,
      children: periods
          .map((day) => _buildDaySchedule(context, screenWidth, screenHeight))
          .toList(),
    );
  }

  Widget _buildDaySchedule(BuildContext context, screenWidth, screenHeight) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GradePeriodCard(
                activityMaxGrade: 10,
                myGrade: 8.5,
              ),
            ],
          ),
          SizedBox(
            width: screenWidth * 0.015,
            height: screenWidth * 0.015,
          ),
          GradeActivityCard(
            activityName: "Prova prática",
            activityMaxGrade: 10,
            activityType: "Avaliação aplicada pelo professor",
            activtyDate: "03/01/2023",
            myGrade: 8.5,
          ),
          GradeActivityCard(
            activityName: "Projeto em grupo",
            activityMaxGrade: 6,
            activityType: "Atividade avaliativa",
            activtyDate: "04/01/2023",
            myGrade: 3.3,
          ),
          GradeActivityCard(
            activityName: "Atividades em sala",
            activityMaxGrade: 10,
            activityType: "Atividade avaliativa",
            activtyDate: "06/01/2023",
            myGrade: 2,
          ),
        ],
      ),
    );
  }
}
