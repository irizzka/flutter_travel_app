import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_app/models/card_model.dart';

class Data extends ChangeNotifier {
  int _counter = _first.count;
  String _backgroundImage;

  static CardModel _first = CardModel.cardList.first;
  CardModel _cardModel = CardModel(_first.imgLink,
      _first.title,_first.info, _first.count);

  void setCard(CardModel card){
    _cardModel = card;
    _counter = card.count;
    notifyListeners();
  }
  String getTitle() {
    return _cardModel.title;
  }

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  int getCounter() {
    return _counter;
  }

  void setBackgroundImage(String img){
    _backgroundImage = img;
    notifyListeners();
  }

  String getBackgroundImage(){
    return _cardModel.imgLink.toString() ?? CardModel.cardList.first.imgLink;
  }

}