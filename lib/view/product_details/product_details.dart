import 'package:flutter/material.dart';
import 'package:grocery/constants/color_constants.dart';
import 'package:grocery/view/product_details/widgets/details.dart';

class Product_details extends StatelessWidget {
  const Product_details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Row(
          children: [
            SizedBox(
              width: 50,
            ),
            Text(
              "Product details",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color_Constants.primaryBlack.withOpacity(.1),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Container(
                    height: 180,
                    width: 120,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS62oGGuev3XBU3TC8W1vlyVFWWwZvzximSuw&usqp=CAU",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Red Label Tea",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Stack(children: [
                              Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Color_Constants.primarygreen,
                                    borderRadius: BorderRadius.circular(3)),
                              ),
                              Positioned(
                                bottom: 10,
                                child: Text(
                                  "   4.2   ⭐",
                                  style: TextStyle(
                                      color: Color_Constants.primaryWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                ),
                              )
                            ]),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "96 ratings",
                              style: TextStyle(
                                color: Color_Constants.primaryBlack
                                    .withOpacity(.7),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Text(
                              "\$12",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "\$18",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 13),
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
            SizedBox(
              height: 30,
            ),
            Details(),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Positioned(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color_Constants.primarygreen.withOpacity(.5),
                        borderRadius: BorderRadius.circular(7)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border,
                        size: 30,
                        color: Color_Constants.primarygreen,
                      ),
                    ),
                  ),
                )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color_Constants.primarygreen),
                  child: Text(
                    "Add to cart",
                    style: TextStyle(color: Color_Constants.primaryWhite),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
