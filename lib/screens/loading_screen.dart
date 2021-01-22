import 'package:flutter/material.dart';
import 'package:flutter_clima/services/location.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_clima/utilities/constants.dart';
import 'dart:convert';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
  }

  void getLocation() async {
    Location location = new Location();
    await location.getCurrentLocation();
  }

  void getData() async {
    http.Response res = await http.get(
        'http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=${api}');

    if (res.statusCode == 200) {
      String data = res.body;
      var temperature = jsonDecode(data)['list'][0]['main']['temp'];
    } else {
      print(res.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('code'),
          ],
        ),
      ),
    );
  }
}
