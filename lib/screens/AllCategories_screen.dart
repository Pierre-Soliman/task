import 'package:flutter/material.dart';
import 'package:task/Models/offersModel.dart';
import 'package:task/screens/Categorydetails_screen.dart';
import 'package:task/category.dart';
import 'package:task/screens/offerdetails_screen.dart';
import 'package:task/Models/categoryOfOffers.dart';
import 'offers_screen.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key, this.categories});

  static const routeName = '/allcategories';

  final List<CategoryModel>? categories;

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
          backgroundColor: Colors.white,
          title: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Offers Categories",
                style: TextStyle(color: Color(0xff505050),fontSize: 20)),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 250,
                      childAspectRatio: 4 / 2,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                  shrinkWrap: true,
                  itemCount: widget.categories!.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                       onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Categorydetail(
                            offers: widget.categories![index].offers,category: widget.categories![index],
                          ))));},
                      child: categeory(
                        image: widget.categories![index].image,
                        txt: widget.categories![index].txt,
                    ),
                    );
                  },
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
        
        ),
      ),
    );
  }
}
