import 'package:flutter/material.dart';
import 'package:grocery/constants/color_constants.dart';
import 'package:grocery/view/product_details/product_details.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Product_details(),
            ));
      },
      child: Stack(children: [
        Container(
          height: 120,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color_Constants.primarygreen.withOpacity(.3),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                  height: 75,
                  width: 75,
                  child: Image.network(
                    "https://images.pexels.com/photos/54082/carrots-vegetables-food-orange-54082.jpeg?auto=compress&cs=tinysrgb&w=400",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "vegetables",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color_Constants.primaryBlack.withOpacity(.9)),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
