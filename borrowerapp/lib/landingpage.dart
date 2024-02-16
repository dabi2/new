import 'package:borrowerapp/colors.dart';
import 'package:flutter/material.dart';
import 'package:borrowerapp/drawer.dart';




class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('ITPL',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900),)),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.notifications,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.language,color: Colors.white,)),
        ],
        backgroundColor: MainColors.appbar,
        elevation: 8.0,
       
      ),
      drawer: Drawerclass().buildDrawer(context),

      
      
      backgroundColor: MainColors.body,
      body: Expanded(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 108,
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
              top: 105,
              // width: 510,
              child: Container(
                
                decoration: BoxDecoration(
                  // change this color to MainColors.body
                  color: MainColors.body,
                  borderRadius:
                      const BorderRadius.only(topRight: Radius.circular(80)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: MainColors.containercolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          // Row(
                          //   children: [
                          //     RichText(text: TextSpan(
                          //       children: <TextSpan>[
                                  
                          //         TextSpan(text: 'Get Loan offers up to '),
                          //         TextSpan(text: '\u20B950,000',style: TextStyle(color: Colors.white,fontSize: 20)),
                          //         TextSpan(text: '\n Complete Your Profile and work details and get best\n '),
                          //         TextSpan(text: 'Loan Offers '),
                          //       ]
                          //     ))
                          //   ],
                          // ),
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
              top: 400,
              left: 10,
              right: 10,
              child: Column(
                children: [
                  Container(
                    height: 100,                    
                    decoration: BoxDecoration(
                      color: MainColors.containercolor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/coins.png'),
                        // const Text('Check your credit score \n and much more',style: TextStyle(color: Colors.white),),
                        TextButton(onPressed: (){},                        
                         child:const Row(
                          children: [
                            Text('Check Score',style: TextStyle(color: Colors.white),),
                            Icon(Icons.arrow_forward_outlined,size: 25,color: Colors.white,)
                          ],
                         ), ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
                top: 350,
                left: 50,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(),
                      child: const Text(
                        'Your Credit Score',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      ),
                  ],
                )),
            Positioned(
                height: 250,
                width: 510,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: MainColors.appbar,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(80))),
                      child:  const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [                            
                            Row(
                              
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 40,),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZSUyMGltYWdlfGVufDB8fDB8fHww',
                                    ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 50, top: 10),
                              child: Row(
                                children: [
                                  Text(
                                    'Hello..! ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
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
        
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
