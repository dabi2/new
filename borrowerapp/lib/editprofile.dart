import 'package:flutter/material.dart';
import 'profilepage.dart';
import 'drawer.dart';
import 'colors.dart';
// import 'bottomnavigator.dart';

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
            Navigator.pop(context,
                MaterialPageRoute(builder: (context) => const Userprofile()));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: MainColors.appbar,
        elevation: 8.0,
      ),
      drawer: Drawerclass().buildDrawer(context),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/loanpage.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  maxRadius: 40,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'User Name',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 190,left: 34,right: 34,),
                  child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Text('User Name'),
                           Divider(
                            color: Colors.black,
                           ),
                           SizedBox(
                            width: 50,
                            child: Text('text'),
                           ),
                           SizedBox(
                            width: 50,
                            child: Text('text'),
                           ),
                           SizedBox(
                            width: 50,
                            child: Text('text'),
                           ),
                           SizedBox(
                            width: 50,
                            child: Text('text'),
                           ),
                        ],
                      )
                    ),
                ),
              
              ],
            ),
          ) 
        ],
      ),
    );
  }
}
