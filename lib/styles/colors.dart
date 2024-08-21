import 'package:flutter/material.dart';

// Definindo as cores:
Color _mainColor = Colors.green;
Color _backgroundColor = Colors.white;
Color _messageTextColor = Colors.black;
Color _alertColor = Colors.amber[600]!;
Color _urgentAlertColor = Colors.red;
Color _onTapButtonColor = Colors.blueGrey;

Color _bannerColor = Colors.black54;

Color get mainColor => _mainColor;

Color get backgroundColor => _backgroundColor;

Color get alertColor => _alertColor;

Color get urgentAlertColor => _urgentAlertColor;

Color get onTapButtonColor => _onTapButtonColor;

Color get messageTextColor => _messageTextColor;

Color get bannerColor => _bannerColor;

setDarkMode(bool isDarkMode) {
  if (isDarkMode) {
    _backgroundColor =  Color(0xFF303030);;
    _messageTextColor = Colors.white;
  } else {
    _backgroundColor = Colors.white;
    _messageTextColor = Colors.black;
  }
}
