import 'package:flutter/material.dart';
import 'primarybackgrouns.dart';

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
            onPressed: () => Navigator.of(context).pop,
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            
            ),
        actions: [],
      ),
      body: Stack(
        children: <Widget>[Primarybackgroundimage()],
      ),
    );
  }
}
// class Drawerclass{
// Widget buildDrawer(BuildContext context) {
//    return Drawer();
//   };
// }