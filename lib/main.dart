import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.white,
        primaryColor: Colors.pink[400],
        backgroundColor: Colors.red[300],
        accentColor: Colors.orange[200],
        textTheme: TextTheme(
          headline4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.pink[50],
          border: InputBorder.none
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Demo Posts App",
      home: Home(),
    );
  }
}
