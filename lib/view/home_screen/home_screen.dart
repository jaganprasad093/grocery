import 'package:flutter/material.dart';
import 'package:grocery/constants/color_constants.dart';
import 'package:grocery/view/home_screen/widgets/bestseller.dart';
import 'package:grocery/view/home_screen/widgets/category.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Color_Constants.primarygreen,
        title: Row(
          children: [
            Icon(
              Icons.sort,
              color: Color_Constants.primaryWhite,
              size: 40,
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    isDense: true,
                    fillColor: Color_Constants.primaryWhite.withOpacity(.23),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color_Constants.primaryWhite.withOpacity(.6),
                      size: 20,
                    ),
                    hintText: "search",
                    hintStyle: TextStyle(
                        color: Color_Constants.primaryWhite.withOpacity(.6),
                        fontSize: 20),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none)),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 400,
                child: Image.network(
                  "https://images.pexels.com/photos/128402/pexels-photo-128402.jpeg?cs=srgb&dl=pexels-angele-j-128402.jpg&fm=jpg&_gl=1*xwnwiy*_ga*MTQyMTM1NTYwOS4xNzA4NTM0NjE5*_ga_8JE65Q40S6*MTcxMDkxNzIyMi4yMy4xLjE3MTA5MTc0NTQuMC4wLjA.",
                  fit: BoxFit.cover,
                ),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "category",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("view all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color_Constants.primarygreen))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 120,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Category(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: 6),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "best seller",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("view all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color_Constants.primarygreen))
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Bestseller(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: 6),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "featured deals",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text("view all",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color_Constants.primarygreen))
                ],
              ),
              SizedBox(
                height: 200,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Bestseller(),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 15,
                        ),
                    itemCount: 6),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
