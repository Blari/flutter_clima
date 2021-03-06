import 'package:flutter/material.dart';
import 'package:flutter_clima/screens/loading_screen.dart';
import 'package:flutter_clima/screens/location_screen.dart';
import 'package:flutter_clima/screens/city_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        '/location_screen': (context) => LocationScreen(),
        '/city_screen': (context) => CityScreen()
      },
    );
  }
}
