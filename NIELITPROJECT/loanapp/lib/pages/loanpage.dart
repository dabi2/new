import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/pages/drawer.dart';
import 'package:loanapp/pages/languagepage.dart';
import 'package:loanapp/pages/notifications.dart';
import 'package:loanapp/pages/payment.dart';

class Loanpage extends StatefulWidget {
  const Loanpage({super.key});

  @override
  State<Loanpage> createState() => _LoanpageState();
}

class _LoanpageState extends State<Loanpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.appbar,
        title: Center(
            child: Text(
          'Loan',
          style: GoogleFonts.audiowide(
            color: Colors.white,
            fontSize: 25,
          ),
        )),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Notifications()));
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Languagepage()));
            },
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
          ),
        ],
        elevation: 100,
      ),
      drawer: Drawerclass().buildDrawer(context),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/loanpage.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SingleChildScrollView(
              child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                    child: Text(
                  'Total Loan Amount: \u20B950,000',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          
                          ),
                      color: MainColors.lightcontainer,
                    ),
                    child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.car_rental,
                                              color: Colors.white,
                                              size: 23,
                                            ),
                                            Text(
                                          'Car Loan',
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                          ],
                                        ),
                                        
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_month_sharp,
                                              color: Colors.white,
                                              size: 15,
                                            ),
                                            Text(
                                          'Due date 12/02/2024',
                                          style: TextStyle(
                                              fontSize: 12, color: Colors.grey),
                                        ),
                                          ],
                                        ),
                                        
                                      ],
                                    ),
                                    const Divider(
                                      indent: 5,
                                      color: Colors.grey,
                                      endIndent: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Amount: \u20B9 50,000',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const Paymentmode()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.green[700],
                                            ),
                                            child: const Text(
                                              'Pay Now',
                                              style:
                                                  TextStyle(color: Colors.white),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                    
                  ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                      
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            
                            ),
                        color: MainColors.lightcontainer,
                      ),
                      child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.house_siding,
                                                color: Colors.white,
                                                size: 23,
                                              ),
                                              Text(
                                            'Housing Loan',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                            ],
                                          ),
                                          
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month_sharp,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              Text(
                                            'Due date 12/02/2024',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.grey),
                                          ),
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                      const Divider(
                                        indent: 5,
                                        color: Colors.grey,
                                        endIndent: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Amount: \u20B9 50,000',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Paymentmode()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green[700],
                                              ),
                                              child: const Text(
                                                'Pay Now',
                                                style:
                                                    TextStyle(color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                      
                    ),
              ),
                  Divider(
                    endIndent: 10,
                    indent: 10,
                    color: Colors.grey,
                  ),
              
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                      
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            
                            ),
                        color: MainColors.lightcontainer,
                      ),
                      child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.school_outlined,
                                                color: Colors.white,
                                                size: 23,
                                              ),
                                              Text(
                                            'Education Loan',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                            ],
                                          ),
                                          
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_month_sharp,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              Text(
                                            'Due date 12/02/2024',
                                            style: TextStyle(
                                                fontSize: 12, color: Colors.grey),
                                          ),
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                      const Divider(
                                        indent: 5,
                                        color: Colors.grey,
                                        endIndent: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Text(
                                            'Amount: \u20B9 50,000',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const Paymentmode()));
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.green[700],
                                              ),
                                              child: const Text(
                                                'Pay Now',
                                                style:
                                                    TextStyle(color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                    ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
