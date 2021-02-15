import 'package:flutter/material.dart';
import 'package:project/screens/home/about.dart';
import 'package:project/screens/home/drawer.dart';
import 'package:project/screens/home/psi.dart';
import 'package:project/screens/home/settings_form.dart';
import 'package:project/screens/home/uvi.dart';
import 'package:project/screens/home/weatherforecast.dart';
import 'package:project/services/auth.dart';
import "package:project/services/database.dart";
import 'package:provider/provider.dart';
import 'package:project/screens/home/profile_list.dart';
import 'package:project/models/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final AuthService _auth = AuthService();
  String title = 'Home';
  int index = 0;
  List<Widget> list = [ProfileList(), About(), UVI(), Weatherforecast(), PSI()];
  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 60.0,
              ),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Profile>>.value(
      value: DatabaseService().profile,
      child: Scaffold(
        backgroundColor: Colors.red[50],
        appBar: AppBar(
            title: Text(title),
            backgroundColor: Colors.red[700],
            elevation: 0.0,
            actions: <Widget>[
              FlatButton.icon(
                icon: Icon(Icons.person),
                label: Text('logout'),
                onPressed: () async {
                  await _auth.signOut();
                },
              ),
              FlatButton.icon(
                icon: Icon(Icons.settings),
                label: Text('settings'),
                onPressed: () => _showSettingsPanel(),
              ),
            ]),
        body: list[index],
        drawer: MyDrawer(onTap: (context, i, txt) {
          setState(() {
            index = i;
            title = txt;
            Navigator.pop(context);
          });
        }),
      ),
    );
  }
}
