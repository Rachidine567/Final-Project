import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final String food;

  const CategoryCard({super.key, required this.bgColor, required this.food});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.only(left: 15),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "images/${food}.jpg",
            height: 80,
            width: 80,
          ),
          Text(
            food,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}
