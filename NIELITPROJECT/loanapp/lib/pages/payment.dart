import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/pages/drawer.dart';
import 'package:loanapp/pages/languagepage.dart';
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
            style:  GoogleFonts.audiowide(
              color: Colors.white,
              fontSize: 25,
            ),
          )),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Notifications()));
              },
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Languagepage()));
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
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Card(
                            child: Image.asset('images/coins.png',height: 100,width: 100,),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                            child: Image.asset('images/coins.png',height: 100,width: 100,),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                            child: Image.asset('images/coins.png',height: 100,width: 100,),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Card(
                            child: Image.asset('images/coins.png',height: 100,width: 100,),
                          )
                        ],
                      ),
                    ],
                  ),
                  
                ),
              )
            )
          ],
        ),
    );
  }
}