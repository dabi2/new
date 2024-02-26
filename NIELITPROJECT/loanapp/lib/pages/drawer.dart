import 'package:flutter/material.dart';
import 'package:loanapp/colors/color.dart';
// import 'editprofile.dart';
// import 'showtransactions.dart';

class Drawerclass{
Widget buildDrawer(BuildContext context){
  return Drawer(
    backgroundColor: MainColors.body,
    
    
    child: ListView(
      
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: MainColors.appbar,
          ),
        child: CircleAvatar(
          backgroundColor: MainColors.body,
          child: const Icon(Icons.person,color: Colors.white,size: 50,),
        ),),
        ListTile(
          leading: const Icon(Icons.person_add_alt_1,color: Colors.white,),
          title: const Text('Edit Profile',style: TextStyle(color: Colors.white),),
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const Editprofile()),
            // );   
          },
        ),

        ListTile(          
          leading: const Icon(Icons.history,color: Colors.white,),
          title: const Text('Transactions History',style: TextStyle(color: Colors.white),),
          
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ShowtransactionsHistory())
            // );
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings,color: Colors.white,),
          title: const Text('Notification Setting',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.call,color: Colors.white,),
          title: const Text('Contact us',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.help_outline_outlined,color: Colors.white,),
          title: const Text('Help and FAQ',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
        ),
        ListTile(
          leading: const Icon(Icons.logout_rounded,color: Colors.white,),
          title: const Text('Logout',style: TextStyle(color: Colors.white),),
          onTap: () {},
        ),
      ],
    ),
  );
}
}
