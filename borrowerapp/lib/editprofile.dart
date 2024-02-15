import 'package:flutter/material.dart';
import 'profilepage.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => EditprofileState();
}

class EditprofileState extends State<Editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => Userprofile())
              );
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
            
            ),
        
      ),
      body: Text('hello')
    );
  }
}