class CardModel {
  String imgLink;
  String title;
  String info;
  int count;

  CardModel(this.imgLink, this.title, this.info, this.count);
  static List<CardModel> cardList = [
    CardModel('images/bali.jpg', 'Discover Bali',
        'The mere mention of Bali evokes thoughts a paradise.', 4),
    CardModel('images/bali2.jpg', ' Jatiluwih Rice',
        'The mere mention of Bali evokes thoughts a paradise.', 3),
    CardModel('images/bali3.jpg', 'Pura Ulun Danu',
        'The mere mention of Bali evokes thoughts a paradise.', 4),
    CardModel('images/bali4.jpg', 'Kelingking Beach',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali5.jpg', 'Nusa Islands',
        'The mere mention of Bali evokes thoughts a paradise.', 0),
    CardModel('images/bali6.jpg', 'Tukad Cepung',
        'The mere mention of Bali evokes thoughts a paradise.', 3),
    CardModel('images/bali7.jpg', 'Nusa Penida Island',
        'The mere mention of Bali evokes thoughts a paradise.', 2),
    CardModel('images/bali8.jpg', 'Lempuyang Temple',
        'The mere mention of Bali evokes thoughts a paradise.', 5),
  ];
}
