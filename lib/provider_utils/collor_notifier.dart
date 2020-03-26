import 'package:flutter/material.dart';

class ColorNotifier extends ChangeNotifier{

  Color get  mainColor => Color(0xff1f107d);
  set mainColor(Color newColor){
    mainColor = newColor;
    notifyListeners();
  }
}