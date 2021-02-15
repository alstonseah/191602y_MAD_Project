import 'package:flutter/material.dart';

class Weatherforecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(10, 80, 10, 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Weather',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20.0,
              ),
              Text("Today's Weather : 28° , Showers",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20.0,
              ),
              Text('Cooling , Bring an umbrella',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text("Tonight's Weather : 25° , Partly Cloudy",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[800],
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20.0,
              ),
              Text('Cooling',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 25.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  height: 1.0,
                  width: 130.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                  "Tomorrow's Weather : 32° , Mostly Cloudy with a thunderstorn in the afternoon",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[800],
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20.0,
              ),
              Text('Bring an umbrella',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.normal,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center),
            ]),
      )
    ]));
  }
}
