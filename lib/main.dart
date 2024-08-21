import 'package:ifg_mobile_estudante/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/mainTabBar/mainTabBar.dart';

void main() {
  runApp(const IFG_Mobile_Estudante());
}

class IFG_Mobile_Estudante extends StatelessWidget {
  const IFG_Mobile_Estudante({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: mainColor,
    ));

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    setDarkMode(MediaQuery.of(context).platformBrightness == Brightness.dark);

    return MaterialApp(
      title: 'IFG Mobile Estudante',
      theme: ThemeData(
        fontFamily: "Quicksand",
        primaryColor: mainColor,
        appBarTheme: AppBarTheme(
          color: backgroundColor,
          iconTheme: IconThemeData(color: backgroundColor),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MainTabBar(),
    );
  }
}
