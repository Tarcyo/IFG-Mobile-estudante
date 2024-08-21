import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class VerticalButtom extends StatelessWidget {
  final String text;
  final IconData aboveIcon;
  final VoidCallback? onPressed;

  const VerticalButtom(
    this.text,
    this.aboveIcon, {
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(right: 5),
      width: screenWidth * 0.24,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  backgroundColor: Color(0xFF1F1F1F),
                  fixedSize: Size(screenWidth * 0.24, screenWidth * 0.24),
                  foregroundColor: onTapButtonColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      aboveIcon,
                      color: mainColor,
                      size: screenWidth * 0.1,
                      opticalSize: screenWidth * 0.1,
                    ),
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: screenWidth * 0.032,
                          color: messageTextColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
