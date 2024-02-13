import 'package:borrowerapp/colors.dart';
import 'package:flutter/material.dart';

class Drawerclass{
  final Drawer drawerfunction = Drawer(
    backgroundColor: MainColors.body,
    
    child: ListView(
      
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: MainColors.appbar,
          ),
        child: CircleAvatar(
          backgroundColor: MainColors.body,
          child: Icon(Icons.person,color: Colors.white,size: 50,),
        ),),
        ListTile(
          leading: Icon(Icons.person_add_alt_1,color: Colors.white,),
          title: Text('Edit Profile',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),

        ListTile(          
          leading: Icon(Icons.history,color: Colors.white,),
          title: Text('Transactions History',style: TextStyle(color: Colors.white),),
          
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings,color: Colors.white,),
          title: Text('Notification Setting',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.call,color: Colors.white,),
          title: Text('Contact us',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.help_outline_outlined,color: Colors.white,),
          title: Text('Help and FAQ',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
        Divider(
          indent: 20,
          endIndent: 20,
        ),
        ListTile(
          leading: Icon(Icons.logout_rounded,color: Colors.white,),
          title: Text('Logout',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
      ],
    ),
  );
}