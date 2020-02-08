import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_travel_app/screens/calendar_screen.dart';
import 'package:flutter_travel_app/widgets/img_list.dart';
import 'package:flutter_travel_app/provider/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {



  List<Icon> showStars(BuildContext context) {

    List<Icon> starsList = [];
   int count = Provider.of<Data>(context).getCounter();
    print(count);

    for( int i = count ; i >= 1; i--){
      starsList.add(Icon(FontAwesomeIcons.solidStar,
      color: Colors.yellow,));
    }

    for(int i = 5; i > count; i--){

        starsList.add(Icon(FontAwesomeIcons.star));

    }


    return starsList;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.srcOver),
            fit: BoxFit.fill,
            image: AssetImage( Provider.of<Data>(context).getBackgroundImage(),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                     // Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.calendar_today),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarScreen()));
                    },
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(Provider.of<Data>(context).getTitle(), style: TextStyle(
                    fontFamily: 'HindSiliguri',
                    fontWeight: FontWeight.bold,
                    fontSize: 34.0,
                    color: Colors.white,
                  ),),
                /*  Icon(FontAwesomeIcons.solidStar),
                  Icon(FontAwesomeIcons.star),*/
                  Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: showStars(context),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 300,
                    child: Text('The mere mention of Bali evokes thoughts a paradise.',
                    style: TextStyle(
                      fontFamily: 'HindSiliguri',
                      fontSize: 17.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      height: 1.1,
                    ),),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(Icons.keyboard_arrow_down, size: 30,),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      height: 80,
                      color: Color(0x9A171a17),
                      child: ImgList(
                       /* callback: () {
                          Provider.of<Data>(context).setBackgroundImage(img);
                        },*/
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        FlatButton(
                          child: Text('More',textAlign: TextAlign.start,style: TextStyle(
                            color: Colors.white,
                          ),),
                          onPressed: () {

                          },

                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward),
                          onPressed: () {

                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
