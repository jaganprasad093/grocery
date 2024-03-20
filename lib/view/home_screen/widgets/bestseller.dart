import 'package:flutter/material.dart';
import 'package:grocery/constants/color_constants.dart';

class Bestseller extends StatelessWidget {
  const Bestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color_Constants.primaryBlack.withOpacity(.1),
        ),
        height: 200,
        width: 150,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 110,
              child: Image.network(
                  "https://images.pexels.com/photos/1493080/pexels-photo-1493080.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "⭐⭐⭐⭐⭐",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text("Red label tea leaf,\n1kg"),
                  Row(
                    children: [
                      Text(
                        "\$12",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "\$18",
                        style:
                            TextStyle(decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "5% off",
                        style: TextStyle(
                            color: Color_Constants.primarygreen,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Icon(
            Icons.shopping_cart,
            color: Color_Constants.primaryWhite,
            size: 20,
          ),
          decoration: BoxDecoration(
              color: Color_Constants.primarygreen,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10))),
        ),
      ),
      Positioned(
          top: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Color_Constants.primarygreen.withOpacity(.5),
              child: Icon(
                Icons.favorite_border,
                size: 20,
                color: Color_Constants.primarygreen,
              ),
            ),
          ))
    ]);
  }
}
