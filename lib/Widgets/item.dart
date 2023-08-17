import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class Item extends StatelessWidget {
  const Item({
    super.key,
    required this.image,
    required this.rate,
     this.categeoryName,
    required this.title,
    required this.offerPercenatge,
    required this.daysRemiaining,
    required this.press,
  });
 
  final String image;
  final double rate ; 
  final String? categeoryName;
  final String title ;
final String offerPercenatge;
final String daysRemiaining ;
  final dynamic press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1.0, color: Colors.grey.shade300),
        ),
        child: Row( 
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 180,
              child: Stack(
                children: [
                  Image.asset(
                    image,fit: BoxFit.fitHeight,
                    height: 100,
                  ),
                  Positioned(
                    bottom: 8,
                    right: 25,
                    child: Container(
                      height: 28,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),  color: Colors.grey.shade200,),
                      child: Row(
                        children: [
                          SizedBox(width: 3,),
                          Container( 
                              child:SvgPicture.asset("assets/images/icn_star_rate_large.svg",height: 15,),),
                              SizedBox(width: 6,),
                          Container(
                            child: Text(rate.toString(),style: TextStyle(fontSize: 10),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 5,),
                Container(
                  child: Text(
                    categeoryName.toString(),
                    style: TextStyle(color: Color(0xff9D9C9C),fontSize: 12 ),
                  ),
                ),
                SizedBox(height: 5,),
                Container(
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),
                  ),
                ),SizedBox(height: 5,),
                Container(
                  child: Text(
                   offerPercenatge,
                    style: TextStyle(
                      color: Color(0xffC6A25B),
                      fontSize: 16,
                    ),
                  ),
                ),SizedBox(height: 5,),
                Container(
                  child: Text(
                    daysRemiaining,
                    style: TextStyle(color: Color(0xff9D9C9C),fontSize: 12),
                  ),
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}
