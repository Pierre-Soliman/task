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
final String email ;
final String phone ;


OffersModel({
  required this.image , 
required this.rate,
required this.categeoryName,
required this.title,
 required this.offerPercenatge,
  required this.daysRemiaining,
  required this.expiredate,
  required this.email,
  required this.phone
  });


}