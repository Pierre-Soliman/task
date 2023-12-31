import 'package:flutter/material.dart';
import 'package:task/Screens/Home_Screen.dart';
import 'package:task/Screens/offers_screen.dart';
import 'package:task/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task',
     theme: ThemeData(fontFamily: 'SuisseIntl-Light'),
      home:  Home(),
      debugShowCheckedModeBanner: false,
      initialRoute: Home.routeName,
      routes: routes,

    );
  }
}

