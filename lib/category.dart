import 'package:flutter/material.dart';

class categeory extends StatelessWidget {
  const categeory({
    super.key,
    required this.image,
    required this.txt,
    // required this.press,
  });
  final String image;
  final String txt;
  // final dynamic press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: press,
      child: Stack(
        children: [         
                Container(
                  height: 95,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(0),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                    height: 100,
                    
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
               Positioned(
                bottom: 20,
                left: 12,
                // top: 2,
                 child: Container(
                    child: Text(
                      txt,
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
               ),
              ],
            
          
        
      
      ),
    );
  }
}
