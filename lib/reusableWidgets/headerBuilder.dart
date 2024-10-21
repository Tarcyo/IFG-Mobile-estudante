import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class HeaderBuilder extends StatelessWidget {
  final Widget left;
  final Widget right;
  final Widget center;
  final Widget top;
  final Widget bottom;

  const HeaderBuilder({
    Key? key,
    required this.left,
    required this.right,
    required this.center,
    required this.top,
    required this.bottom,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [
            gradientColor,
            mainColor
          ],
          radius: 0.8,
          center: Alignment.center, 
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30), 
          bottomRight: Radius.circular(30), 
        ),
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 73, 171, 84), // Cor da borda
            width: 5.0, // Espessura da borda
          ),
        ),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.02, vertical: screenWidth * 0.02),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              left,
              Expanded(
                child: Center(
                  child: top,
                ),
              ),
              right
            ],
          ),
          SizedBox(height: screenHeight * 0.005),
          Center(
            child: center,
          ),
          SizedBox(
            height: screenHeight * 0.0005,
          ),
          bottom
        ],
      ),
    );
  }
}
