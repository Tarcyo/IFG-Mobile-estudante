import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/headerBuilder.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class RectoryMessageScreen extends StatelessWidget {
 final String _rectoryMessage;
  final String _rectorName;

  RectoryMessageScreen(this._rectoryMessage,this._rectorName,{super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [backgroundColor, backgroundColor],
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

  Widget _header(BuildContext context, screenWidth, screenHeight) {
    return HeaderBuilder(
        left: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: backgroundColor,
            size: screenWidth * 0.08,
          ),
          onPressed: () {
            Navigator.of(context).pop("");
          },
        ),
        right: Icon(
          Icons.help_outline,
          color: Colors.transparent,
          size: screenWidth * 0.08,
        ),
        center: Center(
          child: Container(
            height: screenHeight * 0.15,
            width: screenHeight * 0.15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor,
              border: Border.all(color: mainColor, width: screenWidth * 0.0025),
            ),
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.00125),
              child: Icon(
                Icons.message,
                size: screenHeight * 0.1,
                color: mainColor,
              ),
            ),
          ),
        ),
        top: Center(
          child: Text(
            "Mensagem da Reitoria",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: backgroundColor,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.06),
          ),
        ),
        bottom: SizedBox(
          width: 3,
        ));
  }

  Widget _body(BuildContext context, screenWidth, screenHeight) {
    return Center(
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.015,
            ),
            SizedBox(
              width: screenWidth * 0.94,
              child: Card(
                color: focusBackgroundColor,
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.all(screenWidth * 0.055),
                    width: screenHeight * 0.9,
                    child: Column(
                      children: [
                        Container(
                          height: screenHeight * 0.25,
                          width: screenHeight * 0.25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/reitor(a).jpg'), // Replace with correct path
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.015,
                        ),
                        Text(
                          _rectoryMessage,
                          style: TextStyle(
                            color: messageTextColor,
                            fontSize: screenWidth * 0.032,
                          ),
                        ),
                        SizedBox(height: screenWidth * 0.015),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                _rectorName,
                                style: TextStyle(
                                    color: mainColor,
                                    fontSize: screenWidth * 0.04),
                              ),
                              Text(
                                "Reitoria do IFG",
                                style: TextStyle(
                                    color: messageTextColor,
                                    fontSize: screenWidth * 0.033),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
