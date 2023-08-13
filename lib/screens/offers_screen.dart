import 'package:flutter/material.dart';
import 'package:task/Models/categoryOfOffers.dart';
import 'package:task/item.dart';
import 'package:task/screens/AllCategories_screen.dart';
import 'package:task/category.dart';

import 'package:task/Models/offersModel.dart';
import 'package:task/screens/Categorydetails_screen.dart';
import 'package:task/screens/offerdetails_screen.dart';

class OffersScreen extends StatefulWidget {
  OffersScreen({super.key});

  static const routeName = '/OffersScreen';

  @override
  State<OffersScreen> createState() => _OffersScreenState();
}

class _OffersScreenState extends State<OffersScreen> {
  final List<OffersModel> offers = [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ];
  final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/images/book.png',
      txt: "Book Stores",
      offers:[
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],),
    CategoryModel(
      image: 'assets/images/donuts.png',
      txt: "Dining",
      offers:[
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
    CategoryModel(
      image: 'assets/images/playsation.png',
      txt: "Entertainment",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
    CategoryModel(
      image: 'assets/images/bags.png',
      txt: "Fashion",
      offers:[
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
     CategoryModel(
      image: 'assets/images/alarm.png',
      txt: "Seasonal \n Alarm",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
     CategoryModel(
      image: 'assets/images/home.png',
      txt: "Home & Furniture",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/telephone.png',
      txt: "7070",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/appliances.png',
      txt: "Appliances",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/Automotive.png',
      txt: "Automotive",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),  CategoryModel(
      image: 'assets/images/Accessories.png',
      txt: "Accessories, Jewelry \n& Optics",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/medical.png',
      txt: "Medical",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/RealState.png',
      txt: "Real Estate",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/Schools.png',
      txt: "Schools & Nurses",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/travel.png',
      txt: "Special Travel",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
   
   
   CategoryModel(
      image: 'assets/images/Accessories.png',
      txt: "Accessories, Jewelry & Optics",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/RealState.png',
      txt: "Real Estate",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/Schools.png',
      txt: "Schools & Nurses",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ), CategoryModel(
      image: 'assets/images/travel.png',
      txt: "Special Travel",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
     CategoryModel(
      image: 'assets/images/sports.png',
      txt: "Sports",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
     CategoryModel(
      image: 'assets/images/kids.png',
      txt: "Kids",
      offers:[
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
       
  ],
    ),
    CategoryModel(
      image: 'assets/images/other.png',
      txt: "Other",
      offers: [
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "40 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "25 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()),
    OffersModel(
        image: "assets/images/bmw.png",
        rate: 2.2,
        categeoryName: "Category goes here",
        title: "Place title here",
        offerPercenatge: "10 % Offer",
        daysRemiaining: " 4 days remaining",
        expiredate: DateTime.now()), 
    
  ],
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            "assets/images/iconback.png",
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: 
                Text("E-Offers", style: TextStyle(color: Color(0xff505050),fontFamily: 'SuisseIntl-Light',fontSize: 20))),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Categories",
                    style: TextStyle(color: Color(0xff505050), fontSize: 18,fontFamily: 'SuisseIntl-Light',),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => AllCategories(categories: categories ,))));
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "See All",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'SuisseIntl-Light',
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Colors.red,
                          ),
                        ]),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 4 / 2,
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 10),
                shrinkWrap: true,
                itemCount: categories.length == 4 ? 2 : 4 ,
                itemBuilder: (context, index) {
                  return InkWell(
                    child: categeory(
                      image: categories[index].image,
                      txt: categories[index].txt,
                    ),
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Categorydetail( offers: categories![index].offers,category:categories![index],))));
                    },
                  );
                },
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Recently Added Offers",
                style: TextStyle(color: Color(0xff505050),fontFamily: 'SuisseIntl-Light', fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10);
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: offers.length,
                itemBuilder: (context, index) {
                  return Item(
                      image: offers[index].image,
                      rate: offers[index].rate,
                      categeoryName: offers[index].categeoryName,
                      title: offers[index].title,
                      offerPercenatge: offers[index].offerPercenatge,
                      daysRemiaining: offers[index].daysRemiaining,
                      press: () {
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MealDetail(offer: offers[index],))));
                      }
                      );
                },
              ),
            ],
          ),
        ),    
      ),
    );
  }
}