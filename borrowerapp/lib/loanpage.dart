import 'package:flutter/material.dart';
import 'bottomnavigator.dart';
import 'drawer.dart';
import 'colors.dart';
import 'paynowbutton.dart';

class Loan_Page extends StatefulWidget {
  const Loan_Page({super.key});

  @override
  State<Loan_Page> createState() => _Loan_PageState();
}

class _Loan_PageState extends State<Loan_Page> {
  int _selectedIndex = 0;
  List<String> items = ['Personal Loan 1', 'Personal Loan 2'];
  String? selectedItem = 'Personal Loan 1';
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Loan_Page()),
        );
      }
    });
  }

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
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(90)),
                      color: MainColors.body,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: MainColors.lightcontainer,
                            ),
                            child: Row(
                              children: [
                                TextButton.icon(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.receipt_long_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    label: Text(
                                      'See Transactions',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.home,
                              size: 23,
                            ),
                            Text(
                              'Home Loan',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 22, 22, 22),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(
                              Icons.calendar_month_sharp,
                              size: 15,
                            ),
                            Text(
                              'Due date 12/02/2024',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(8, 8, 8, 1)),
                            ),
                          ],
                        ),
                        Divider(
                          indent: 5,
                          color: Colors.grey,
                          endIndent: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Amount: \u20B950,000',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                  fontWeight: FontWeight.bold),
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Paybutton()));
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green[700],
                                ),
                                child: Text(
                                  'Paynow',
                                  style: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 0, 0, 0)),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),      
      bottomNavigationBar: BottomNavigationBarCustom(
        onItemTapped: _onItemTapped,
        selectedIndex: _selectedIndex,
      ),
    );
  }
}
