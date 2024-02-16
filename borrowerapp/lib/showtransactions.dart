import 'package:flutter/material.dart';
import 'colors.dart';

class ShowtransactionsHistory extends StatefulWidget {
  const ShowtransactionsHistory({super.key});

  @override
  State<ShowtransactionsHistory> createState() => _ShowtransactionsHistoryState();
}

class _ShowtransactionsHistoryState extends State<ShowtransactionsHistory> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.appbar, 
        elevation: 80,
        // leading: IconButton(onPressed: (){
        //   Navigator.pop(
        //     context,
        //     MaterialPageRoute(builder: (context) => )
        //   )
        // }, icon: icon),
      ),
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
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 10,right: 30),
            child: SingleChildScrollView(
              child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Container(
                      
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/latina-actresses-jennifer-lopez-1654895007.png?crop=0.946xw:0.983xh;0.0221xw,0.00708xh&resize=980:*'
                        ),
                        fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      height: 50,
                      width: 50,
                      
                      
                    ),
                    const SizedBox( width: 10,),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('data',style: TextStyle(color: Colors.white),),
                          Text('February 14,2024 at 8:36 AM',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                     const Spacer(),
                      const Column(
                          children: [
                            Text('\u20B9 503.41',style: TextStyle(color: Colors.white),)
                          ],
                        )
                  ],
                ),
                
                const SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    Container(
                      
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/latina-actresses-jennifer-lopez-1654895007.png?crop=0.946xw:0.983xh;0.0221xw,0.00708xh&resize=980:*'
                        ),
                        fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      height: 50,
                      width: 50,
                      
                      
                    ),
                    const SizedBox( width: 10,),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('data',style: TextStyle(color: Colors.white),),
                          Text('February 14,2024 at 8:36 AM',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                     const Spacer(),
                      const Column(
                          children: [
                            Text('\u20B9 503.41',style: TextStyle(color: Colors.white),)
                          ],
                        )
                  ],
                ),
                
                const SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                  ),
                ),
                Row(
                  children: [                    
                    Container(                      
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/latina-actresses-jennifer-lopez-1654895007.png?crop=0.946xw:0.983xh;0.0221xw,0.00708xh&resize=980:*'
                        ),
                        fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      height: 50,
                      width: 50,
                    ),
                    const SizedBox( width: 10,),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('data',style: TextStyle(color: Colors.white),),
                          Text('February 14,2024 at 8:36 AM',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                     const Spacer(),
                      const Column(
                          children: [
                            Text('\u20B9 503.41',style: TextStyle(color: Colors.white),)
                          ],
                        )
                  ],
                ),
                
                const SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                  ),
                ),
                Row(
                  children: [
                    
                    Container(
                      
                      decoration: const BoxDecoration(
                        image: DecorationImage(image: NetworkImage('https://hips.hearstapps.com/hmg-prod/images/latina-actresses-jennifer-lopez-1654895007.png?crop=0.946xw:0.983xh;0.0221xw,0.00708xh&resize=980:*'
                        ),
                        fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(100))
                      ),
                      height: 50,
                      width: 50,
                      
                      
                    ),
                    const SizedBox( width: 10,),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('data',style: TextStyle(color: Colors.white),),
                          Text('February 14,2024 at 8:36 AM',style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                     const Spacer(),
                      const Column(
                          children: [
                            Text('\u20B9 503.41',style: TextStyle(color: Colors.white),)
                          ],
                        )
                  ],
                ),
                
                const SizedBox(
                  height: 10,
                  child: Divider(
                    color: Colors.grey,
                    endIndent: 10,
                    indent: 10,
                  ),
                ),
                
              ],
            ),
              
            )
          ),
          
        ],
      ),
    );
  }
}