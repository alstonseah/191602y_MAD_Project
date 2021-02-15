import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/models/profile.dart';
import 'package:project/models/user.dart';
import 'package:project/services/database.dart';
import 'package:project/shared/loading.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  final Function onTap;
  MyDrawer({this.onTap});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context);
    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            UserData userData = snapshot.data;
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Drawer(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  DrawerHeader(
                    decoration: BoxDecoration(color: Colors.indigo[900]),
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text(
                              userData.name,
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ]),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text('Home'),
                    onTap: () => onTap(context, 0, 'Home'),
                  ),
                  ListTile(
                    leading: Icon(Icons.support_agent),
                    title: Text('About'),
                    onTap: () => onTap(context, 1, 'About'),
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_sunny_outlined),
                    title: Text('Ultra Violet Index'),
                    onTap: () => onTap(context, 2, 'Ultra Violet Index'),
                  ),
                  ListTile(
                    leading: Icon(Icons.wb_cloudy_outlined),
                    title: Text('Weather Forecast'),
                    onTap: () => onTap(context, 3, 'Weather Forecast'),
                  ),
                  ListTile(
                    leading: Icon(Icons.masks),
                    title: Text('Pollutant Standards Index (PSI) '),
                    onTap: () =>
                        onTap(context, 4, 'Pollutant Standards Index (PSI) '),
                  ),
                ],
              )),
            );
          } else {
            return Loading();
          }
        });
  }
}
