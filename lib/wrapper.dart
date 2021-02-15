import 'package:flutter/material.dart';
import 'package:project/models/user.dart';
import 'package:project/screens/authenticate/authenticate.dart';
import 'package:project/screens/home/about.dart';
import 'package:project/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<TheUser>(context);
    //return either Home or AUthenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
