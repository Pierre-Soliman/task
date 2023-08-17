import 'package:flutter/material.dart';
import 'package:task/Models/categoryOfOffers.dart';
import 'package:task/Models/offersModel.dart';
import 'package:task/Widgets/category.dart';
import 'package:task/Screens/offerdetails_screen.dart';
import '../item.dart';

class Categorydetail extends StatefulWidget {
  const Categorydetail({super.key, this.category, this.offers});
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
            padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
 image: DecorationImage(
                  opacity: 0.5,
                    image: AssetImage(widget.category!.image),
                    fit: BoxFit.fill),
                gradient: LinearGradient(
                  begin:Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.white.withOpacity(0.5),
                    Colors.transparent.withOpacity(0.5),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment:  MainAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    child: MaterialButton(
                      child: Image.asset(
                          "assets/images/iconback.png",
                          color: Colors.black,
                        ),
                      onPressed: (){Navigator.pop(context);},
                     
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          widget.category!.txt,
                          style:
                              TextStyle(color: Color(0xff505050), fontSize: 20),
                        ),
                      ),
                      Container(padding: EdgeInsets.all(15),
                        child: Text(
                          "${widget.category!.offers.length.toString()} Offers",
                          style:
                              TextStyle(color: Color(0xff505050), fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
        
              
               ListView.separated(
                padding: EdgeInsets.all(15),
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10);
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.category!.offers.length,
                itemBuilder: (context, index) {
                  return Item(
                      image: widget.offers![index].image,
                      rate: widget.offers![index].rate,
                      categeoryName: "",
                      title: widget.offers![index].title,
                      offerPercenatge: widget.offers![index].offerPercenatge,
                      daysRemiaining: widget.offers![index].daysRemiaining,
                      press: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => MealDetail(
                                      offer: widget.offers![index],
                                    ))));
                      });
                },
              ),
            
          ],
        ),
      ),
    );
  }
}
