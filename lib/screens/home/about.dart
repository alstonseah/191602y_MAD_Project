import 'package:flutter/material.dart';
import 'package:project/services/auth.dart';

class About extends StatelessWidget {
  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'images/Logo.png',
                height: 150,
                width: 250,
              ),
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'This is SGEnvironment, here you can check out the Ultra Violet index, the Weather and the Pollutant Standars Index(PSI)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
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
                'Contact Us',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15.0,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.local_phone),
                      ),
                      TextSpan(
                        text: " : 9456 8900",
                      ),
                    ]),
              ),
              SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    children: [
                      WidgetSpan(
                        child: Icon(Icons.mail),
                      ),
                      TextSpan(
                        text: " : SgEnvironment@gmail.com",
                      ),
                    ]),
              ),
            ]),
      )
    ]));
  }
}
