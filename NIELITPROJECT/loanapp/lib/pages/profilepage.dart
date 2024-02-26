import 'package:flutter/material.dart';
import 'package:loanapp/colors/color.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: MainColors.appbar,
        title: const Center(child: Text('Profile',style: TextStyle(color: Color.fromARGB(255, 226, 33, 33)),)),
      ),
      );
  }
}