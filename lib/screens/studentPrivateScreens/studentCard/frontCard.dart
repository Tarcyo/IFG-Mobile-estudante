import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class FrontCard extends StatelessWidget {


  const FrontCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        children: [
          SizedBox(
            width: screenWidth * 0.02,
            height: screenWidth * 0.02,
          ),
          Card(
            color: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(screenWidth * 0.043),
              side: BorderSide(color: mainColor, width: screenWidth * 0.015),
            ),
            child: Container(
              padding: EdgeInsets.all(screenWidth * 0.02),
              width: screenWidth * 0.965,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: screenWidth * 0.23,
                            width: screenWidth * 0.6,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo A.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            height: screenWidth * 0.23,
                            width: screenWidth * 0.23,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/fotoExemplo.png'),
                                fit: BoxFit.fill,
                                scale: 0.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: screenWidth * 0.03,
                        height: screenWidth * 0.03,
                      ),
                      Text(
                        "Carteira Estudantil",
                        style: TextStyle(
                            fontSize: screenWidth * 0.063,
                            color: mainColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenWidth * 0.041,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                    color: mainColor,
                                    size: screenWidth * 0.08,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  Text(
                                    "Nome",
                                    style: TextStyle(
                                      color: mainColor,
                                      fontSize: screenWidth * 0.046,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Tarcyo Guilherme Maia Borges",
                                style: TextStyle(
                                  color: messageTextColor,
                                  fontSize: screenWidth * 0.046,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.school,
                                    color: mainColor,
                                    size: screenWidth * 0.08,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  Text(
                                    "Curso",
                                    style: TextStyle(
                                      color: mainColor,
                                      fontSize: screenWidth * 0.046,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Engenharia de Software",
                                style: TextStyle(
                                  color: messageTextColor,
                                  fontSize: screenWidth * 0.046,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: screenWidth * 0.04,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.assignment,
                                    color: mainColor,
                                    size: screenWidth * 0.08,
                                  ),
                                  SizedBox(
                                    width: screenWidth * 0.01,
                                  ),
                                  Text(
                                    "Modalidade",
                                    style: TextStyle(
                                      color: mainColor,
                                      fontSize: screenWidth * 0.046,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Bacharelado",
                                style: TextStyle(
                                  color: messageTextColor,
                                  fontSize: screenWidth * 0.046,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
