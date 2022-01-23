import 'package:flutter/material.dart';




class CounterModel with ChangeNotifier {
  String _name = "";
  String _email="";
  String get Name => _name;
  String get Email=>_email;
  void Data(String name,String email) {
    _name=name;
    _email=email;
    notifyListeners();
  }
}



