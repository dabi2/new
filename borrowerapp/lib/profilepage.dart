import 'package:borrowerapp/colors.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({Key? key}) : super(key: key);

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            children: [
              Text(
                'Profile Page',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  )),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
        backgroundColor: MainColors.appbar,
        elevation: 8.0,
      ),
      drawer: Drawerclass().buildDrawer(context),
      body: Stack(
        children: [
          Container(
            // constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/loanpage.png'),
                // fit: BoxFit.cover, 
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
          Padding(
            padding: const EdgeInsets.only(top: 180, left: 25, right: 25),
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: MainColors.containercolor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      children: [                        
                          TextButton.icon(onPressed: (){}, 
                          icon: const Icon(Icons.edit,size: 20,color: Colors.white,), label: const Text('Edit Profile',style: TextStyle(color: Colors.white),))                     
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      endIndent: 20,
                      indent: 10,
                    ),
                    Row(
                      children: [                        
                          TextButton.icon(onPressed: (){}, 
                          icon: const Icon(Icons.receipt_long,size: 20,color: Colors.white,), label: const Text('Show Transactions',style: TextStyle(color: Colors.white),))                     
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      endIndent: 20,
                      indent: 10,
                    ),
                    Row(
                      children: [                        
                          TextButton.icon(onPressed: (){}, 
                          icon: const Icon(Icons.account_balance,size: 20,color: Colors.white,), label: const Text('Check Balance',style: TextStyle(color: Colors.white),))                     
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      endIndent: 20,
                      indent: 10,
                    ),
                    Row(
                      children: [                        
                          TextButton.icon(onPressed: (){}, 
                          icon: const Icon(Icons.logout_outlined,size: 20,color: Colors.white,), label: const Text('Log Out',style: TextStyle(color: Colors.white),))                     
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      endIndent: 20,
                      indent: 10,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
);
  }
}
