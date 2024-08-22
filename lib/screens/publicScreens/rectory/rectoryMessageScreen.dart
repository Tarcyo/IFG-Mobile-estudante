import 'package:flutter/material.dart';
import 'package:ifg_mobile_estudante/reusableWidgets/headerBuilder.dart';
import 'package:ifg_mobile_estudante/styles/colors.dart';

class RectoryMessageScreen extends StatelessWidget {
  final String _mesage;
  final String _rectorName;
  RectoryMessageScreen(this._mesage, this._rectorName, {Key? key});

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
          stops: [0.3, 0.3],
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
      center: SizedBox(
        height: screenHeight * 0.01,
      ),
      top: Text(
        "Mensagem da reitoria",
        style: TextStyle(fontSize: screenWidth * 0.06, color: backgroundColor),
      ),
      bottom: const SizedBox(width: 1),
    );
  }

  Widget _body(BuildContext context, double screenWidth, double screenHeight) {
    return Container(
      padding: const EdgeInsets.all(3),
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: screenHeight * 0.01),
          Center(
            child: Card(
              color: focusBackgroundColor,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(screenWidth * 0.045),
                    width: screenHeight * 0.9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: screenWidth * 0.01),
                        Center(
                          child: Container(
                            height: screenWidth * 0.4,
                            width: screenWidth * 0.4,
                            decoration: BoxDecoration(
                              color: backgroundColor,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image:
                                    AssetImage('assets/images/reitor(a).jpg'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenWidth * 0.015),
                        Text(
                          _mesage,
                          style: TextStyle(
                              fontSize: screenWidth * 0.0333,
                              color: messageTextColor),
                        ),
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
                        SizedBox(height: screenWidth * 0.015),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 8.0,
                    left: 8.0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: mainColor),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
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
