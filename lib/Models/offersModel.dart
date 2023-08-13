import 'package:flutter/material.dart';

class OffersModel
{
  final String image ; 
 final double rate  ; 
  final String categeoryName;
  final String title ;
final String offerPercenatge;
final String daysRemiaining ;
final DateTime expiredate;


OffersModel({
  required this.image , 
required this.rate,
required this.categeoryName,
required this.title,
 required this.offerPercenatge,
  required this.daysRemiaining,
  required this.expiredate,
  });


}