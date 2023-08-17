import 'package:flutter/material.dart';
import 'package:task/Screens/AllCategories_screen.dart';
import 'package:task/Screens/Categorydetails_screen.dart';
import 'package:task/Screens/Home_Screen.dart';
import 'package:task/Screens/offerdetails_screen.dart';
import 'package:task/Screens/offers_screen.dart';



  final Map<String, WidgetBuilder> routes = {
Home.routeName : (context) => Home(),
OffersScreen.routeName :(context) => OffersScreen(),
AllCategories.routeName:(context) => AllCategories(),
Categorydetail.routeName:(context) => Categorydetail(),
MealDetail.routeName :(context) => MealDetail(),

  };