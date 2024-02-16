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
          splashColor: Colors.white,
        ),
        title: const Text('Edit Profile',style: TextStyle(color: Colors.white),),
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
      // drawer: Drawerclass().buildDrawer(context),
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
                  padding: EdgeInsets.only(
                    top: 190,
                    left: 34,
                    right: 34,
                  ),
                  child: Card(
                    color: Colors.transparent,
                    
                    
                   
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [                              
                              Text('User Name:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('Kenneth',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Email:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('example@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pan Number:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('COPVJ20RT',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Date Of Birth:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('**/**/1948',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Phone Number:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('*******231',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Address:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('khanapara.NH7,plain,area',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Employment Status:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('Student',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Monthly Income:',style: TextStyle(color: Colors.white,fontSize: 16),),
                              Text('\u20B950,000',style: TextStyle(color: Colors.grey,fontSize: 12),),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
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
