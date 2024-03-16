import 'package:flutter/material.dart';
import 'package:loanapp/colors/color.dart';
import 'package:loanapp/pages/applyloann.dart';
import 'package:loanapp/pages/checkscore.dart';
import 'package:loanapp/pages/drawer.dart';
import 'package:loanapp/pages/languagepage.dart';
import 'package:loanapp/pages/notifications.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

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
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/loanpage.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 40,
                            child: Icon(
                              Icons.person,
                              size: 40,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Hello Kenneth..!!',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: MainColors.containercolor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                      text: const TextSpan(
                                          text: 'Get Loan Upto \u20B950,000',
                                          style:
                                              TextStyle(color: Colors.white))),
                                ),
                                RichText(
                                    text: const TextSpan(
                                        text:
                                            'Complete your profile and work details and get best loan offers ',
                                        style: TextStyle(color: Colors.white))),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      // TextButton(onPressed: (){}, child:  Text('Check loan Offers'))
                                      ElevatedButton.icon(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    MainColors.appbar)),
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const Applyloann()));
                                        },
                                        icon: const Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.white,
                                        ),
                                        label: const Text(
                                          'Apply loan',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: MainColors.containercolor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Image.asset(
                              'images/coins.png',
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Column(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Text(
                                  'Check Your Credit Score',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton.icon(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                MainColors.appbar)),
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Checkscore()));
                                    },
                                    icon: const Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Colors.white,
                                    ),
                                    label: const Text(
                                      'Check Score',
                                      style: TextStyle(color: Colors.white),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(20),
                    child: Container(
                      // height: MediaQuery.of(context).size.height,
                      // width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: MainColors.containercolor,
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(20),
                        child: Column(                          
                          children: <Widget>[
                            Row(
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text:
                                            'Personal Loan - Instant Loan Online',
                                        style: GoogleFonts.merriweather(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        )))
                              ],
                            ),
                            const Divider(
                              endIndent: 200,
                              color: Colors.grey,
                            ),
                            Row(
                              children: <Widget>[
                                Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'images/coins.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Eligibility',
                                            style: GoogleFonts.merriweather(),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(MainColors.lightcontainer)),
                                                onPressed: () {},
                                                child: Text("Know More>>",style: TextStyle(color: Colors.white),)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'images/coins.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Interest Rate',
                                            style: GoogleFonts.merriweather(),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(MainColors.lightcontainer)),
                                                onPressed: () {},
                                                child: Text("Know More>>",style: TextStyle(color: Colors.white),)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Card(
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Image.asset(
                                            'images/coins.png',
                                            height: 50,
                                            width: 50,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Documentations',
                                            style: GoogleFonts.merriweather(),),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextButton(
                                              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(MainColors.lightcontainer)),
                                                onPressed: () {},
                                                child: Text("Know More>>",style: TextStyle(color: Colors.white),)),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
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
          ],
        ));
  }
}
