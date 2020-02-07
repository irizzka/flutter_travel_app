class CardModel {
  String imgLink;
  String title;
  String info;
  int count;

  CardModel(this.imgLink, this.title, this.info, this.count);
  static List<CardModel> cardList = [
    CardModel('images/bali.jpg', 'Discover Bali',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali2.jpg', 'Title 2',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali3.jpg', 'Title 3',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali4.jpg', 'Title 4',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali5.jpg', 'Title 5',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali6.jpg', 'Title 6',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali7.jpg', 'Title 7',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali8.jpg', 'Title 8',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
  ];
}
