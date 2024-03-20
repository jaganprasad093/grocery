import 'package:flutter/material.dart';
import 'package:grocery/constants/color_constants.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color_Constants.primaryBlack.withOpacity(.1),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                Container(
                  height: 1,
                  width: 400,
                  color: Colors.black.withOpacity(.5),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Brand",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack.withOpacity(.5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Red Label",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Type",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack.withOpacity(.5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Black Tea",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Quantity",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack.withOpacity(.5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "2 kg",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Selflife",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack.withOpacity(.5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "12 months",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Organic",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack.withOpacity(.5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "No",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Flavor",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack.withOpacity(.5)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Plain",
                      style: TextStyle(
                          color: Color_Constants.primaryBlack,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "More details",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Color_Constants.primarygreen,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
