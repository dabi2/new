import 'package:flutter/material.dart';
import 'package:borrowerapp/landingpage.dart';
import 'profilepage.dart';
import 'bottomnavigator.dart';
import 'editprofile.dart';
import 'showtransactions.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Loan Application',
      home: Mybottomnavigationbar(),
    );    
  }
}