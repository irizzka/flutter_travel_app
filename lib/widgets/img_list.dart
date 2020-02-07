import 'package:flutter/material.dart';

class ImgList extends StatelessWidget {


  List<String> imagesList = [
    'images/bali.jpg',
    'images/bali2.jpg',
    'images/bali3.jpg',
    'images/bali4.jpg',
    'images/bali5.jpg',
    'images/bali6.jpg',
    'images/bali7.jpg',
    'images/bali8.jpg'
  ];

  List<Container> createImgList(){
    List<Container> cardList = [];
    for(String img in imagesList){
     var i = Container(
       padding: EdgeInsets.symmetric(horizontal: 5),
       width: 75,
       height: 65,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            img,
            fit: BoxFit.fill,
          ),
        ),
      );
      cardList.add(i);
    }
    return cardList;
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
       children: createImgList(),


    );
  }
}
