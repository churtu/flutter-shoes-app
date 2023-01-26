import 'package:flutter/services.dart';

void cambiarStatusBarLight(){

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light
  );
}

void cambiarStatusBarDark(){
  
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark
  );
}