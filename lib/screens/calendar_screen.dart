import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:flutter_travel_app/provider/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      child: Scaffold(
        body: Container(
           decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.srcOver),
              fit: BoxFit.fill,
              image: AssetImage( Provider.of<Data>(context).getBackgroundImage(),
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Text(
                Provider.of<Data>(context).getTitle(),
                style: TextStyle(
                  fontFamily: 'HindSiliguri',
                  fontWeight: FontWeight.bold,
                  fontSize: 34.0,
                  color: Colors.white,
                ),
              ),

             // Icon(FontAwesomeIcons.stream),
              Container(
                color: Colors.white,
                height: 400,
                child: CalendarCarousel(
                  isScrollable: false,
                  daysHaveCircularBorder: false,
                ),
              ),
            ],
          ),
        ),
      ),
      builder: (BuildContext context) => Data(),
    );
  }
}
