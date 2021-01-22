import 'package:flutter/material.dart';
import 'package:flutter_clima/services/location.dart';
import 'package:http/http.dart' as http;

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
        'http://api.openweathermap.org/data/2.5/forecast?id=524901&appid=a67c348e50fc2db380ee36e1219db498');

    if (res.statusCode == 200) {
      String data = res.body;
      print(data);
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
