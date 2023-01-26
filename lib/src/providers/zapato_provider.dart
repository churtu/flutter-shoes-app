

import 'package:flutter/material.dart';

class ZapatoProvider with ChangeNotifier {
  String _image = 'assets/imgs/azul.png';
  double _talla = 9.0;

  String get image => _image;
  double get talla => _talla;

  set image(String image){
    _image = image;
    notifyListeners();
  }

  set talla(double talla){
    _talla = talla;
    notifyListeners();
  }
  
}