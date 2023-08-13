import 'package:flutter/material.dart';
import 'package:task/Models/categoryOfOffers.dart';
import 'package:task/Models/offersModel.dart';
import 'package:task/category.dart';
import 'package:task/item.dart';

import 'package:task/screens/offerdetails_screen.dart';

class Categorydetail extends StatefulWidget {
  const Categorydetail({super.key ,this.category ,this.offers });
  static const routeName = '/categorydetail';
    
    final CategoryModel? category;
    final List<OffersModel>? offers;
  @override
  State<Categorydetail> createState() => _CategorydetailState();
}

class _CategorydetailState extends State<Categorydetail> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(220.0), // here the desired height
        child: Container(
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                "assets/images/iconback.png",
                color: Colors.black,
              ),
            ),
            flexibleSpace:
              Container(
              decoration: BoxDecoration(
               
                  image: DecorationImage(
                      image: AssetImage(widget.category!.image),
                      fit: BoxFit.fill),
                      ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Padding(padding: EdgeInsets.all(90)),
                  Row(  
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        widget.category!.txt,
                        style: TextStyle(color: Color(0xff505050), fontSize: 20),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "${widget.category!.offers.length.toString()} Offers",
                        style: TextStyle(color: Color(0xff505050), fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            
            SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10);
                  },
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount:  widget.category!.offers.length,
                  itemBuilder: (context, index) {
                    return Item(
                        image: widget.offers![index].image,
                        rate: widget.offers![index].rate,
                        categeoryName:"",
                        title: widget.offers![index].title,
                        offerPercenatge: widget.offers![index].offerPercenatge,
                        daysRemiaining: widget.offers![index].daysRemiaining,
                        press: () {   Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MealDetail(offer: widget.offers![index],))));
              });
                  },
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}







