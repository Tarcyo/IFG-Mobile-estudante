import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class HorizontalBorderlessButtom extends StatelessWidget {
  final String text;
  final IconData leftIcon;
  final VoidCallback? onPressed;

  const HorizontalBorderlessButtom(
    this.text,
    this.leftIcon, {
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: screenWidth * 0.4, 
      height: screenHeight* 0.08, 
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: focusBackgroundColor,
        
          elevation: 0,
          foregroundColor: onTapButtonColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(
                        screenWidth * 180), 
                  ),
                  padding: EdgeInsets.all(
                      screenWidth * 0.04), 
                  child: Icon(
                    leftIcon,
                    color: backgroundColor,
                    size: screenWidth * 0.07 
                  ),
                ),
                SizedBox(
                    width: screenWidth *
                        0.02), 
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: screenWidth * 0.032,
                          color: messageTextColor),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.arrow_forward_ios,
                color: mainColor,
                size: screenWidth*0.04),
          ],
        ),
      ),
    );
  }
}
