import 'package:flutter/material.dart';

class UVI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(10, 200, 10, 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('UV Index',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20.0,
              ),
              Text('7',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 20.0,
              ),
              Text('High',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 10.0,
              ),
              Text(
                  'Please protect yourself from UV rays by example using sunscreen (at least SPF 30)',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center),
            ]),
      )
    ]));
  }
}
