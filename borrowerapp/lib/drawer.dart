import 'package:borrowerapp/colors.dart';
import 'package:flutter/material.dart';

class Drawerclass{
  final Drawer drawerfunction = Drawer(
    backgroundColor: Colors.amber,
    
    child: ListView(
      
      children: [
        DrawerHeader(
        child: CircleAvatar(
          child: Icon(Icons.person),
        ),),
      ],
    ),
  );
}