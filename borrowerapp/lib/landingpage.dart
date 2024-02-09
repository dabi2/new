import 'package:borrowerapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:borrowerapp/bottomnavigator.dart';
import 'package:borrowerapp/drawer.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.amberAccent,
      //   title: Text('Home',style: TextStyle(color: Colors.white),),        
        
      //   // actions: [
      //   //   // Call the buildDrawerButton function from Drawerclass here
      //   //   Drawerclass().buildDrawerButton(() {
      //   //     // Handle drawer button tap
      //   //   }),
      //   // ],
        
      // ),
      
      
      backgroundColor: MainColors.body,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 135,
            left: 323,
            width: 187,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: MainColors.appbar,
              ),
            ),
          ),
          Positioned(
            top: 185,
            width: 510,
            child: Container(
              width: 339,
              decoration: BoxDecoration(
                // change this color to MainColors.body
                color: MainColors.body,
                borderRadius:
                    const BorderRadius.only(topRight: Radius.circular(80)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 45, left: 40, right: 40),
                child: Container(
                  decoration: BoxDecoration(
                    color: MainColors.containercolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Get Loan Offers Up to \u20B950000',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              'Complete your profile and work details and get best loan offers',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MainColors.appbar,
                          ),
                          child: const Text(
                            'Check loan Offers',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            // style: MainColors.appbar,
                              onPressed: () {},
                              child: const Text('Knowmore...',
                                  style: TextStyle(color: Colors.white))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 490,
            left: 10,
            right: 10,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    color: MainColors.containercolor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  alignment: Alignment.centerRight,
                  child: Row(
                    children: [
                      Image.asset('images/coins.png'),
                      const Text('Check your credit score \n and much more',style: TextStyle(color: Colors.white),),
                      TextButton.icon(
                        onPressed: () {},
                        label: const Text(
                          'Check score',
                          style: TextStyle(color: Colors.white),
                        ),
                        icon: const Icon(Icons.arrow_right_alt),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
              top: 450,
              left: 50,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(),
                    child: const Text(
                      'Your Credit Score',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )
                ],
              )),
          Positioned(
              height: 205,
              width: 510,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: MainColors.appbar,
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(80))),
                    child:  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          
                          Row(
                            
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(alignment: Alignment.topRight,
                              child: Scaffold(
                                drawer: Drawerclass().drawerfunction,
                              ),),
                              Padding(
                                padding: EdgeInsets.only(left: 40, top: 20),
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww',
                                  ),
                                  backgroundColor: Colors.transparent,
                                ),
                              ),
                              
                              Spacer(),
                              Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              Icon(Icons.notifications,color: Colors.white,),
                              SizedBox(width: 20),
                              Icon(Icons.language,color: Colors.white,),
                              SizedBox(width: 10),
                              
                              // drawer:Drawerclass().drawerfunction,
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, top: 10),
                            child: Row(
                              children: [
                                Text(
                                  'Hello..! ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Melisa..',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
