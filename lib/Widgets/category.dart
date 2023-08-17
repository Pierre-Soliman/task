import 'package:flutter/material.dart';

class categeory extends StatelessWidget {
  const categeory({
    super.key,
    required this.image,
    required this.txt,
  });
  final String image;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            height: 95,
            margin: EdgeInsets.all(2),
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
            bottom: 15,
            left: 12,
            child: Container(
              child: Text(
                txt,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
