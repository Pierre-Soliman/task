import 'package:flutter/material.dart';
import 'package:task/screens/offers_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (AppBar(
        backgroundColor: Color(0xff505050),
        title: Text("Task"),
      )),
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
    primary: Color(0xff505050) // Background color
  ),
              onPressed: (){Navigator.pushNamed(context, '/OffersScreen');},
              child: const Text("Start"),
              ),
        ),
      ),
    );
  }
}
