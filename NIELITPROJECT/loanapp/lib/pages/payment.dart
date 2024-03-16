import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/pages/drawer.dart';
import 'package:loanapp/pages/languagepage.dart';
import 'package:loanapp/pages/loanpage.dart';
import 'package:loanapp/pages/notifications.dart';

class Paymentmode extends StatefulWidget {
  const Paymentmode({super.key});

  @override
  State<Paymentmode> createState() => _PaymentmodeState();
}

class _PaymentmodeState extends State<Paymentmode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainColors.appbar,
        title: Center(
            child: Text(
          'Home',
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
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/loanpage.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SingleChildScrollView(
              child: Center(
            child: Container(
              margin: const EdgeInsets.only(top: 160),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Card(
                              child: Column(
                            children: [
                              Image.asset(
                                'images/LoanPage.png',
                                height: 100,
                                width: 100,
                              ),
                              Text('UPI')
                            ],
                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                              child: Column(
                            children: [
                              Image.asset(
                                'images/LoanPage.png',
                                height: 100,
                                width: 100,
                              ),
                              Text('E Wallet')
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Card(
                              child: Column(
                            children: [
                              Image.asset(
                                'images/coins.png',
                                height: 100,
                                width: 100,
                              ),
                              Text('Googlepay')
                            ],
                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                              child: Column(
                            children: [
                              Image.asset(
                                'images/coins.png',
                                height: 100,
                                width: 100,
                              ),
                              Text('PhonePe')
                            ],
                          ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(MainColors.appbar)
                        ),
                          onPressed: () {
                            Navigator.pop(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Loanpage()));
                          },
                          icon: Icon(Icons.keyboard_return,color: Colors.white,),
                          label: const Text('Back',style: TextStyle(color: Colors.white),))
                    ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
