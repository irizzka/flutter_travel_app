import 'package:flutter/material.dart';
import 'package:flutter_travel_app/models/card_model.dart';
import 'package:provider/provider.dart';
import 'package:flutter_travel_app/provider/data.dart';

class ImgList extends StatelessWidget {


  static List<String> imagesList = [
    'images/bali.jpg',
    'images/bali2.jpg',
    'images/bali3.jpg',
    'images/bali4.jpg',
    'images/bali5.jpg',
    'images/bali6.jpg',
    'images/bali7.jpg',
    'images/bali8.jpg'
  ];


  @override
  Widget build(BuildContext context) {
    List<Container> createImgList() {
      List<Container> cardList = [];
      for (CardModel card in CardModel.cardList) {
        var i = Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          width: 75,
          height: 65,
          child: GestureDetector(
            onTap: () {
              print(card);
              Provider.of<Data>(context).setCard(card);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                card.imgLink,
                fit: BoxFit.fill,
              ),
            ),
          ),
        );
        cardList.add(i);
      }
      return cardList;
    }
    return ListView(
      scrollDirection: Axis.horizontal,
       children: createImgList(),
    );
  }
}
