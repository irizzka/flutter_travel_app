import 'package:flutter/cupertino.dart';

class Data extends ChangeNotifier {
  int _counter = 0;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  int getCounter() {
    return _counter;
  //  notifyListeners();
  }
}