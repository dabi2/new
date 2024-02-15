// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'bottomnavigator.dart';
import 'drawer.dart';
import 'colors.dart';
import 'paynowbutton.dart';
import 'landingpage.dart';

class Loan_Page extends StatefulWidget {
  const Loan_Page({super.key});

  @override
  State<Loan_Page> createState() => _Loan_PageState();
}

class _Loan_PageState extends State<Loan_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColors.body,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Loan',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.language,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        backgroundColor: MainColors.appbar,
        elevation: 8.0,
      ),
      drawer: Drawerclass().drawerfunction,
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  height: 100,
                  width: 510,
                  decoration: BoxDecoration(
                      color: MainColors.appbar,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(80))),
                  child: Center(
                      child: Text(
                    'Total Loan Amount: \u20B950,000',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 300),
                child: Positioned(
                  child: Container(
                    height: 100,
                    width: 250,
                    decoration: BoxDecoration(
                      color: MainColors.appbar,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 100,
                ),
                child: Positioned(
                  child: Container(
                    height: 185,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.only(topRight: Radius.circular(90)),
                      color: MainColors.body,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            // width: 450,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              color: MainColors.lightcontainer,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.white,
                                        size: 23,
                                      ),
                                      Text(
                                        'Home Loan',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.calendar_month_sharp,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        'Due date 12/02/2024',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
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
                                                        const Paybutton()));
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
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        
                        ),
                    color: MainColors.lightcontainer,
                  ),
                  child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  const Row(
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
                                      SizedBox(
                                        width: 150,
                                      ),
                                      Icon(
                                        Icons.calendar_month_sharp,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        'Due date 12/02/2024',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
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
                                                        const Paybutton()));
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
                const Divider(
                  color: Colors.grey,
                  endIndent: 10,
                  indent: 10,
                ),
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: MainColors.lightcontainer,
                  ),
                  child: Padding(
                              padding: const EdgeInsets.all(25.0),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.school,
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
                                      SizedBox(
                                        width: 100,
                                      ),
                                      Icon(
                                        Icons.calendar_month_sharp,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      Text(
                                        'Due date 12/02/2024',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
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
                                                        const Paybutton()));
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
              ],
            ),
          ))
        ],
      ),
      // bottomNavigationBar: BottomNavigationBarCustom(
      //   onItemTapped: _onItemTapped,
      //   selectedIndex: _selectedIndex,
      // ),
    );
  }
}
