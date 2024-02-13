import 'package:flutter/material.dart';
import 'colors.dart';

class Paybutton extends StatefulWidget {
  const Paybutton({super.key});

  @override
  State<Paybutton> createState() => _PaybuttonState();
}

class _PaybuttonState extends State<Paybutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            children: [
              Text(
                'Payment Mode',
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.white,size: 20,)),
              SizedBox(
                width: 20,
              )
            ],
          ),
          
        ],

        backgroundColor: MainColors.appbar,
        elevation: 8.0,
      ),
    );
  }
}