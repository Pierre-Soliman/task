import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rate/rate.dart';
import 'package:task/Models/categoryOfOffers.dart';
import 'package:task/Models/offersModel.dart';

class MealDetail extends StatefulWidget {
  const MealDetail({
    super.key,
    this.offer,
  });
  static const routeName = '/offerdetail';
  final OffersModel? offer;

  @override
  State<MealDetail> createState() => _MealDetailState();
}

class _MealDetailState extends State<MealDetail> {
  double ratenum=0;

  @override
  void initState() {
   
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(250),
        child: Container(
          child: Stack(
            children: [
              Image.asset(
                widget.offer!.image,
                fit: BoxFit.cover,
                height: 280,
              ),
              Positioned(
                  top: 70,
                  left: 15,
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/iconback.png",
                        color: Colors.white,
                      ))),
              Positioned(
                  bottom: 5,
                  child: Image.asset(
                    "assets/images/smallpic.png",
                    height: 50,
                    width: 60,
                  )),
              Positioned(
                bottom: 15,
                right: 30,
                child: Container(
                  height: 28,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey[50],
                  ),
                  width: 50,
                  child: Row(
                    
                    children: [
                      SizedBox(width: 3,),
                     Container(
                              child:SvgPicture.asset("assets/images/icn_star_rate_large.svg",height: 15,),),
                              SizedBox(width: 6,),
                          Container(
                            child: Text(widget.offer!.rate.toString(),style: TextStyle(fontSize: 10),),
                          ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                widget.offer!.title,
                style: TextStyle(
                    color: Color(0xff505050),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child: Text(
              widget.offer!.offerPercenatge,
              style: TextStyle(color: Color(0xffC6A25B), fontSize: 16),
            )),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                "About",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff505050),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Text(
                    "Lorem ipsum dolor sit amet, consetetur s ts sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam",
                    style: TextStyle(
                      color: Color(0xff505050),fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset("assets/images/icondownload.svg"),
                      SizedBox(width: 5,),
                      Text(
                        "Get more info",
                        style: TextStyle(fontWeight: FontWeight.bold , fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Contact info",
              style: TextStyle(
                  color: Colors.grey.shade600, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/message.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.offer!.email,
                        style: TextStyle(
                          color: Color(0xff505050),fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/phone.png'),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.offer!.phone,
                        style: TextStyle(
                          color: Color(0xff505050),fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: true,
                          backgroundColor: Color(0xff505050),
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: double.infinity,
                                    ),
                                  ),
                                  Container(
                                    height: 400,
                                    padding: EdgeInsets.all(30),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.all(10),
                                            ),
                                            Text(
                                              "Rate Your Experience",
                                              style: TextStyle(
                                                color: Color(0xff505050),fontSize: 20,
                                              ),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: Image.asset(
                                                  "assets/images/exit.png"),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "How was you experience with\n Daddy’s burger?",
                                          style: TextStyle(
                                            color: Color(0xff505050),fontSize: 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Text(
                                          'Very Good',
                                          style: TextStyle(
                                            color: Color(0xff505050),fontSize: 14,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Rate(
                                              iconSize: 40,
                                              color: Colors.yellow.shade800,
                                              allowClear: true,
                                              readOnly: false,
                                              onChange: (v) => setState(() {
                                                 ratenum=v ;
                                                 print(ratenum);
                                                 
                                              }),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 45,
                                        ),
                                        ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              fixedSize: Size(300, 50),
                                              primary: Colors.black,
                                            ),
                                            onPressed: () {
                                              
                                              Navigator.pop(context);
                                   ratenum =widget.offer!.rate;
  
                                              
                                            },
                                            child: Text("Submit" , style: TextStyle(fontSize: 16,),)),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child:
                         ratenum == 0 ? rateContainer(): afterchangerate() ,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container rateContainer() {
    return Container(
      child: Row(
        children: [
          Icon(Icons.rate_review),
          SizedBox(
            width: 10,
          ),
          Text(
            "Rate Your experience",
            style: TextStyle(
              color: Color(0xff505050),fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Container afterchangerate() {
    return Container(
      padding: EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your rated this offer',
            style: TextStyle(
              color: Color(0xff505050),fontSize: 14,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Rate(
                iconSize: 40,
                color: Colors.yellow.shade800,
                allowHalf: false,
                initialValue: ratenum,
                allowClear: true,
                readOnly: false,
                onChange: (ratenum) => print(ratenum),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              // Icon(Icons.star_border),
              Text(
            "Change Rate",
            style: TextStyle(
              color: Color(0xff505050),fontSize: 14,fontWeight: FontWeight.bold
            ),),
            ],
          ),
          
          
        ],
      ),
    );
  }
}
