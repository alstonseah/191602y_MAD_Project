import 'package:flutter/material.dart';
import 'package:project/models/user.dart';
import 'package:project/services/auth.dart';
import 'package:project/wrapper.dart';
import 'screens/home/drawer.dart';
import 'screens/home/about.dart';
import 'models/profile.dart';
import 'screens/home/uvi.dart';
import 'screens/home/weatherforecast.dart';
import 'screens/home/psi.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<TheUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
