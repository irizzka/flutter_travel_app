import 'package:flutter/material.dart';
import 'package:flutter_travel_app/screens/home_screen.dart';
import 'package:provider/provider.dart';

import 'provider/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: ChangeNotifierProvider<Data>(
        builder: (BuildContext context) => Data(),
        child: HomeScreen(),
      ),
    );
  }
}
