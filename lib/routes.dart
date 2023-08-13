import 'package:flutter/material.dart';
import 'package:task/screens/AllCategories_screen.dart';
import 'package:task/screens/Categorydetails_screen.dart';
import 'package:task/screens/Home_Screen.dart';
import 'package:task/screens/offerdetails_screen.dart';
import 'package:task/screens/offers_screen.dart';



  final Map<String, WidgetBuilder> routes = {
Home.routeName : (context) => Home(),
OffersScreen.routeName :(context) => OffersScreen(),
AllCategories.routeName:(context) => AllCategories(),
Categorydetail.routeName:(context) => Categorydetail(),
MealDetail.routeName :(context) => MealDetail(),

  };