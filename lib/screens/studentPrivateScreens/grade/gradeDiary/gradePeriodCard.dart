import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class GradePeriodCard extends StatelessWidget {
  final String activityName;
  final String activityType;
  final double activityMaxGrade;
  final double myGrade;
  final String activtyDate;

  const GradePeriodCard({
    required this.activityName,
    required this.activityType,
    required this.activityMaxGrade,
    required this.myGrade,
    required this.activtyDate,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Color indicatorColor = mainColor;
    IconData indicatorIcon = Icons.emoji_events;
    if (myGrade < (activityMaxGrade * 0.6)) {
      indicatorColor = alertColor;
      indicatorIcon = Icons.warning;
    }
    if (myGrade < (activityMaxGrade * 0.3)) {
      indicatorColor = urgentAlertColor;
    }
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: screenWidth * 0.05),
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Container(
          height: screenWidth * 0.35,
          width: screenWidth * 0.35,
          decoration: BoxDecoration(
            color: indicatorColor,
            borderRadius: BorderRadius.circular(screenWidth * 0.04),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth * 0.025,
                  height: screenWidth * 0.025,
                ),
                Icon(
                  indicatorIcon,
                  color: backgroundColor,
                  size: screenWidth * 0.15,
                ),
                SizedBox(
                  width: screenWidth * 0.01,
                  height: screenWidth * 0.01,
                ),
                Column(
                  children: [
                    Text(
                      "Nota:",
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                    Text(
                      "${myGrade.toString()} / ${activityMaxGrade.toString()}",
                      style: TextStyle(
                        color: backgroundColor,
                        fontSize: screenWidth * 0.04,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
