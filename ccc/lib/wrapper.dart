import 'package:ccc/home/homepage.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});
//returns either home or authenticate widget
  //for now navigate between the two pages using a button like
  @override
  Widget build(BuildContext context) {
    return const MyHomePage();
  }
}


