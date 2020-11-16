import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
   String kboyText = "KBOYさんじゃない";

  void changeKboyText(){
    kboyText = "KBOYさん最高";
    notifyListeners();
  }
}