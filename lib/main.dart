import 'package:flutter/material.dart';
import 'package:grocery/view/home_screen/home_screen.dart';

void main() {
  runApp(Grocery_task_ui());
}

class Grocery_task_ui extends StatefulWidget {
  const Grocery_task_ui({super.key});

  @override
  State<Grocery_task_ui> createState() => _Grocery_task_uiState();
}

class _Grocery_task_uiState extends State<Grocery_task_ui> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_screen(),
    );
  }
}
