import 'package:flutter/material.dart';
import 'materialScreen/materialScreen.dart';

class MaterialDisciplineCard extends StatelessWidget {
  final String discipline;

  const MaterialDisciplineCard({
    required this.discipline,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MaterialScreen(disciplineName: discipline)),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth *
                0.025),
        height: screenHeight *
            0.1, 
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth *
                  0.15, 
              height: screenWidth *
                  0.15, 
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(
                    screenWidth *
                        0.05),
              ),
              child: Center(
                child: Icon(
                  Icons.school,
                  color: Colors.white,
                  size: screenWidth *
                      0.09,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth*
                  0.05,
            ),
            Expanded(
              child: Text(
                discipline,
                style: TextStyle(
                    fontSize: screenWidth* 0.04,
                    color: Colors
                        .green[800]), 
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.green,
              size: screenWidth *
                  0.043, 
            ),
          ],
        ),
      ),
    );
  }
}
