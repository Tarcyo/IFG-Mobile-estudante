import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class HorizontalButtom extends StatelessWidget {
  final String text;
  final IconData leftIcon;
  final VoidCallback? onPressed;

  const HorizontalButtom(
    this.text,
    this.leftIcon, {
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(right: 10),
      width: screenWidth * 0.4,
      height: screenWidth * 0.16,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Color(0xFF1F1F1F),
          elevation: 0,
          foregroundColor: onTapButtonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: screenWidth * 0.035,
              height: screenWidth * 0.035,
            ),
            Icon(
              leftIcon,
              color: mainColor,
              size: screenWidth * 0.1,
            ),
            SizedBox(width: screenWidth * 0.035),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: screenWidth * 0.032, color: messageTextColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
